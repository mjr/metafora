package br.gov.rn.saogoncalo.academico

class DisciplinaController {

    def index() { }
	def listar() {
		render(view:"/disciplina/listarDisciplina.gsp")
	}
}
