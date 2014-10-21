package br.gov.rn.saogoncalo.academico

class TurmaController {

    def index() { }
	
	def listar() {
		render (view:"/turma/listarTurma.gsp")
	}
	
}
