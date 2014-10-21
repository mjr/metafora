package br.gov.rn.saogoncalo.pessoa

class FuncionarioController {

    def index() { }
	
	def editarFuncionario(long id){
		
		
		Funcionario funcionarios = Funcionario.get(id)
		render (view:"/funcionario/editarFuncionario.gsp", model:[funcionarios:funcionarios])
	}

	def atualizar(){
		
		def pessoa = Pessoa.get(params.id)
		pessoa.nome = params.nome
		pessoa.dataDeNascimento = params.dataDeNascimento
		if (!params.cpfCnpj.trim().equals(''))
			pessoa.cpfCnpj = params.cpfCnpj
			else
			pessoa.cpfCnpj = null
		
		def pessoaFisica = PessoaFisica.get(params.id)
		pessoaFisica.rcNumero = params.rcNumero
		pessoaFisica.rcNomeDoCartorio = params.rcNomeDoCartorio
		pessoaFisica.rcNomeDoLivro = params.rcNomeDoLivro
		pessoaFisica.rcFolhaDoLivro = params.rcFolhaDoLivro
		pessoaFisica.sexo = params.sexo
		
		def cidadao = Cidadao.get(params.id)
		cidadao.nacionalidade = params.nacionalidade
		cidadao.estadoCivil = params.estadoCivil
		cidadao.profissao = params.profissao
		
		def funcionario = Funcionario.get(params.id)
		funcionario.cargaHoraria = params.cargaHoraria
		funcionario.matricula = params.matricula
		
		
		def funcionarios = Funcionario.findAll()

		
			if(funcionario.save(flush:true)){
			
				render(view:"/funcionario/listarFuncionario.gsp", model:[
					funcionarios:funcionarios,
					ok : "Funcionário atualizado com sucesso!"
					
				])
				
			}else{
				render(view:"/funcionario/editarFuncionario.gsp", model:[funcionarios:funcionarios,
					erro : "Erro ao atualizar!"
				])
			}
		
	}

	
	def listar() {
		def funcionarios = Funcionario.findAll()
		render(view:"/funcionario/listarFuncionario.gsp", model:[funcionarios:funcionarios])
	}
	
	def deletar(int id){
		
		 Pessoa.deleteAll(Pessoa.get(id))
		
		 redirect(action:"listar" )
		}
	
	def salvar(){

		Pessoa pessoa = new Pessoa(params)

		def funcionarios = Funcionario.findAll()

		if (pessoa.save(flush:true)){

			PessoaFisica pessoaFisica = new PessoaFisica(params)
			pessoaFisica.pessoa = pessoa
			pessoaFisica.save(flush:true)
			pessoaFisica.errors.each{println it}

			Cidadao cidadao = new Cidadao(params)
			cidadao.pessoaFisica = pessoaFisica
			cidadao.save(flush:true)
			cidadao.errors.each{println it}

			Funcionario funcionario = new Funcionario(params)
			funcionario.cidadao = cidadao

			if(funcionario.save(flush:true)){
				funcionario.errors.each{println it}


				render(view:"/funcionario/listarFuncionario.gsp", model:[
					funcionarios:funcionarios,
					ok : "Funcionário cadastrado com sucesso!"

				])
			}else{

				render(view:"/funcionario/listarFuncionario.gsp", model:[
					funcionarios:funcionarios,
					erro : "Erro ao Salvar Funcionário!"
				])
			}
		}else{
		
		def erros
		pessoa.errors.each{erros = it}
		
		if  (erros.toString().contains("Pessoa.cpfCnpj.unique.error")){
		erros = "CPF Já está cadastrado no sistema"}
			

			render(view:"/funcionario/listarFuncionario.gsp", model:[
				funcionarios:funcionarios,
				erro : erros
			])
		}
	}
}
