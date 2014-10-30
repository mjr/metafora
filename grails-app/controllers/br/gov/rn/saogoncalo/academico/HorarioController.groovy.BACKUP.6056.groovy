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
<<<<<<< HEAD
}
>>>>>>> criacao de horarios
=======
}
>>>>>>> ce0b3ad223c2afc5811241fa705c1a70ce066e81
