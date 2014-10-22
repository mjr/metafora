package br.gov.rn.saogoncalo.academico

class MatriculaController {

    def index() { }
	
	def listar() {
		def matriculas = Matricula.findAll()
		render (view:"/matricula/listarMatricula.gsp", model:[matriculas:matriculas])
	}
}
