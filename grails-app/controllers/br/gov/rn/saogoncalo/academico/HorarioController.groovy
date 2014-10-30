package br.gov.rn.saogoncalo.academico

class HorarioController {

	def index() { }

	def listar(){
		def horarios = Horario.findAll()
		render (view:"/horario/listarHorario.gsp", model:[horarios:horarios])
	}
}
