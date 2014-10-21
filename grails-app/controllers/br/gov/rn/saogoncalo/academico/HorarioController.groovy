package br.gov.rn.saogoncalo.academico

class HorarioController {

    def index() { }
	
	def listar() {
		render(view:"/horario/listarHorario.gsp")
	}
}
