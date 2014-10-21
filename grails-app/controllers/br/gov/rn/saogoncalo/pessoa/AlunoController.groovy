package br.gov.rn.saogoncalo.pessoa
import javax.persistence.criteria.CriteriaBuilder;
class AlunoController {

	def index() { }

	def cadastrar(){
	}
	
	def editarAluno(long id){
		
		
		Aluno alunos = Aluno.get(id)
		render (view:"/aluno/editarAluno.gsp", model:[alunos:alunos])
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
		
		def aluno = Aluno.get(params.id)	
		aluno.numeroDeInscricao = params.numeroDeInscricao

		def alunos = Aluno.findAll()


			if(aluno.save(flush:true)){
			
				render(view:"/aluno/listarAluno.gsp", model:[
					alunos:alunos,
					ok : "Aluno atualizado com sucesso!"
					
				])
				
			}else{
				render(view:"/aluno/editarAluno.gsp", model:[alunos:alunos,
					erro : "Erro ao atualizar!"
				])
			}
		
	}


	def listar() {
		def alunos = Aluno.findAll()
		render (view:"/aluno/listarAluno.gsp", model:[alunos:alunos])
	}

	def deletar(int id){
		
		 Pessoa.deleteAll(Pessoa.get(id))
		
		 redirect(action:"listar" )
		}
	def salvar(){

		Pessoa pessoa = new Pessoa(params)
		pessoa.save(flush:true)
		pessoa.errors.each{println it}

		PessoaFisica pessoaFisica = new PessoaFisica(params)
		pessoaFisica.pessoa = pessoa
		pessoaFisica.save(flush:true)
		pessoaFisica.errors.each{println it}

		Cidadao cidadao = new Cidadao(params)
		cidadao.pessoaFisica = pessoaFisica
		cidadao.save(flush:true)
		cidadao.errors.each{println it}


		Aluno aluno = new Aluno(params)
		aluno.cidadao = cidadao

		if(aluno.save(flush:true)){
			aluno.errors.each{println it}

			def alunos = Aluno.findAll()

			render(view:"/aluno/listarAluno.gsp", model:[
				alunos:alunos,
				ok : "Aluno cadastrado com sucesso!"

			])
		}else{
			render(view:"cadastrar", model:[
				erro : "Erro ao Salvar!"
			])
		}
	}
}
