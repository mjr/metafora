package br.gov.rn.saogoncalo.academico
import java.io.ObjectInputStream.GetField;

import javax.persistence.criteria.CriteriaBuilder;
class TurmaController {

	def index() {
	}

	def cadastrar(){
	}

	def editarTurma(long id){


		Turma turmas = Turma.get(id)
		render (view:"/turma/editarTurma.gsp", model:[turmas:turmas])
	}

	def atualizar(){
		
	
		
		def turma = Turma.get(params.id)
		turma.turma = params.turma
		turma.vagas = Integer.parseInt(params.vagas)
		
		Serie serieId = Serie.get(params.long("serieId"))
		
		turma.serie = serieId
		//turma.serieId = Integer.parseInt(params.serieId)
		
		

		def turmas = Turma.findAll()


		if(turma.save(flush:true)){
			
			render(view:"/turma/listarTurma.gsp", model:[
				turmas:turmas,
				ok : "Turma atualizada com sucesso!"

			])
		}else{
			
			render(view:"/turma/editarTurma.gsp", model:[turmas:turmas,
				erro : "Erro ao atualizar!"
			])
		}
	}


	def listar() {
		def turmas = Turma.findAll()
		render (view:"/turma/listarTurma.gsp", model:[turmas:turmas])
	}

	def deletar(int id){

		Turma.deleteAll(Turma.get(id))

		redirect(action:"listar" )
	}
	def salvar(){
		
		
		
		Turma turma = new Turma(params)
		turma.errors.each{println it}
		Serie serieId = Serie.get(params.long("serieId"))
		
		turma.serie = serieId
		
		
		
		
		//turma.serieId = Integer.parseInt(params.serieId)
		//turma.turma = params.turma
		//turma.vagas = Integer.parseInt(params.vagas)		
		
		
		
		//println params.serieId
		
		

		
		def turmas = Turma.findAll()

			if(turma.save(flush:true)){				

				render(view:"/turma/listarTurma.gsp", model:[
					turmas:turmas,
					ok : "Turma cadastrada com sucesso!"

				])
			}else{
				
				turma.errors.each {println it}
				render(view:"/turma/listarTurma.gsp", model:[turmas:turmas,
					erro : "Erro ao Salvar!"
				])
			}
		
	}
}
