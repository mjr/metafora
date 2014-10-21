package br.gov.rn.saogoncalo.academico

class ConteudoDaDisciplinaController {

    def index() { 
		render(view:"/index.gsp")
	}
	
	def academico(){
		render(view:"/modulo-academico.gsp")
	}
	def listar(){
		render(view:"/conteudoDisciplina/listarConteudoDisciplina.gsp")
	}
}
