package br.gov.rn.saogoncalo.pessoa

import javax.persistence.criteria.CriteriaBuilder;



class ProfessorController {

	def index() {
	}

	def cadastrarProfessor(){
		render(view:"/professor/cadastrar.gsp")
	}

	def listar (){
		def professores = Professor.findAll()


		render (view:"/professor/listarProfessor.gsp", model:[professores:professores])
	}
	
	def deletar(int id){
		
		 Pessoa.deleteAll(Pessoa.get(id))
		
		 redirect(action:"listar" )
		}

	def editarProfessor(long id){
		
		
		Professor professores = Professor.get(id)	
		render (view:"/professor/editarProfessor.gsp", model:[professores:professores])
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
		
		def professor = Professor.get(params.id)
		professor.identificacao = params.identificacao		
		
		def professores = Professor.findAll()

		
			if(professor.save(flush:true)){
			
				render(view:"/professor/listarProfessor.gsp", model:[
					professores:professores,
					ok : "Professor atualizado com sucesso!"
					
				])
				
			}else{
				render(view:"/professor/editarProfessor.gsp", model:[professores:professores,
					erro : "Erro ao atualizar!"
				])
			}
		
	}


	def salvar(){

		Pessoa pessoa = new Pessoa(params)

		def professores = Professor.findAll()

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
			funcionario.save(flush:true)
			funcionario.errors.each{println it}

			Professor professor = new Professor(params)
			professor.funcionario = funcionario

			if(professor.save(flush:true)){
				professor.errors.each{println it}


				render(view:"/professor/listarProfessor.gsp", model:[
					professores:professores,
					ok : "Professor cadastrado com sucesso!"

				])
			}else{

				render(view:"/professor/listarProfessor.gsp", model:[
					professores:professores,
					erro : "Erro ao Salvar Professor!"
				])
			}
		}else{
		
		def erros
		pessoa.errors.each{erros = it}
		
		if  (erros.toString().contains("Pessoa.cpfCnpj.unique.error")){
		erros = "CPF J� est� cadastrado no sistema"}
			

			render(view:"/professor/listarProfessor.gsp", model:[
				professores:professores,
				erro : erros
			])
		}
	}
}
