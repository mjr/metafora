package br.gov.rn.saogoncalo.academico

class DisciplinaLecionadaPorProfessorController {

    def index() { }
	
	def listar() {
		render(view:"/disciplinaPorProfessor/listarDisciplinaPorProfessor.gsp")
	}
	
}
