package br.gov.rn.saogoncalo.academico

class SerieController {

    def index() { }
	
	def listar() {
		render(view:"/serie/listarSerie.gsp")
	}
}
