package br.gov.rn.saogoncalo.academico

class HorarioController {

<<<<<<< HEAD
	def index() { }

	def listar(){
		def horarios = Horario.findAll()
		render (view:"/horario/listarHorario.gsp", model:[horarios:horarios])
	}
}
=======
    def index() { }



	def listar (){
		def horario = Horario.findAll()


		render (view:"/horario/listarHorario.gsp", model:[horario:horario])
	}
}
>>>>>>> criacao de horarios
