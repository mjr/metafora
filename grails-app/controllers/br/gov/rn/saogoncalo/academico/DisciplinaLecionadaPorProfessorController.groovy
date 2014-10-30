package br.gov.rn.saogoncalo.academico

class DisciplinaLecionadaPorProfessorController {

    def index() { 
		
	}
	
	def listar (){
		def disciplinaLecionadaPorProfessor = DisciplinaLecionadaPorProfessor.findAll()


		render (view:"/disciplinaPorProfessor/listarDisciplinaPorProfessor.gsp", model:[disciplinaLecionadaPorProfessor:disciplinaLecionadaPorProfessor])
	}
	
}
