package br.gov.rn.saogoncalo.academico

class TurmaDisciplinaController {

    def index() { }
	def listar() {
		render(view:"/turmaDisciplina/listarTurmaDisciplina.gsp")
	}
}
