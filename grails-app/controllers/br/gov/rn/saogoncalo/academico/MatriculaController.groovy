package br.gov.rn.saogoncalo.academico

class MatriculaController {

    def index() { }
	
	def listar() {
		render (view:"/matricula/listarMatricula.gsp")
	}
}
