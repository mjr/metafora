package br.gov.rn.saogoncalo.academico

class HorarioController {

    def index() { }



	def listar (){
		def horario = Horario.findAll()


		render (view:"/horario/listarHorario.gsp", model:[horario:horario])
	}
}