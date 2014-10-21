package br.gov.rn.saogoncalo.pessoa

class PessoaController {
	
	def index() {
		render(view:"/index.gsp")
	}
	
	def pessoal() {
			render(view:"/modulo-pessoa.gsp")
	}
	
}





