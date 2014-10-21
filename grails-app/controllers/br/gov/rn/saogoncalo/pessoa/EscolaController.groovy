package br.gov.rn.saogoncalo.pessoa

class EscolaController {

    def index() { }
	def listar (){
		def escolas = Escola.findAll()


		render (view:"/escola/listarEscola.gsp", model:[escolas:escolas])
	}
	def editarEscola(long id){
		
		
		Escola escolas = Escola.get(id)
		render (view:"/escola/editarEscola.gsp", model:[escolas:escolas])
	}

	def atualizar(){
		def pessoa = Pessoa.get(params.id)

		pessoa.nome = params.nome
		pessoa.dataDeNascimento = params.dataDeNascimento
		pessoa.cpfCnpj = params.cpfCnpj
		
		def pessoaJuridica = PessoaJuridica.get(params.id)
		pessoaJuridica.razaoSocial = params.razaoSocial
		pessoaJuridica.inscricaoEstadual = params.inscricaoEstadual
		
		def escola = Escola.get(params.id)
		escola.inepDaEscola = params.inepDaEscola
		
		def escolas = Escola.findAll()

		
			if(escola.save(flush:true)){
			
				render(view:"/escola/listarEscola.gsp", model:[
					escolas:escolas,
					ok : "Escola atualizada com sucesso!"
					
				])
				
			}else{
				render(view:"/escola/editarEscola.gsp", model:[escolas:escolas,
					erro : "Erro ao atualizar!"
				])
			}
		
	}


	def salvar(){

		Pessoa pessoa = new Pessoa(params)
		pessoa.save(flush:true)
		pessoa.errors.each{println it}

		PessoaJuridica pessoaJuridica = new PessoaJuridica(params)
		pessoaJuridica.pessoa = pessoa
		pessoaJuridica.save(flush:true)
		pessoaJuridica.errors.each{println it}

		Escola escola = new Escola(params)
		escola.pessoaJuridica = pessoaJuridica

		if(escola.save(flush:true)){
			escola.errors.each{println it}

			def escolas = Escola.findAll()

			render(view:"/escola/listarEscola.gsp", model:[
				escolas:escolas,
				ok : "Escola cadastrada com sucesso!"

			])
		}else{
			render(view:"cadastrar", model:[
				erro : "Erro ao Salvar!"
			])
		}
	}
}
