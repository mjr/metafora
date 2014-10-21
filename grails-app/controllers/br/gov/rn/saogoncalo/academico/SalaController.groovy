package br.gov.rn.saogoncalo.academico

class SalaController {

    def index() { }
	
	def listar() {
		render (view:"/sala/listarSala.gsp")
	}
}
