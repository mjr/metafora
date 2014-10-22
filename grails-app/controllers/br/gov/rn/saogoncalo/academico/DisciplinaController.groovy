package br.gov.rn.saogoncalo.academico

class DisciplinaController {

    def index() { }
	
	def listar (){
		def disciplinas = Disciplina.findAll()


		render (view:"/disciplina/listarDisciplina.gsp", model:[disciplinas:disciplinas])
	}
	
	def deletar(int id){
		
		 Disciplina.deleteAll(Disciplina.get(id))
		
		 redirect(action:"listar" )
		}

	def editarDisciplina(long id){
		
		
		Disciplina disciplinas = Disciplina.get(id)
		render (view:"/disciplina/editarDisciplina.gsp", model:[disciplinas:disciplinas])
	}

	def atualizar(){
		def disciplina = Disciplina.get(params.id)

		disciplina.disciplina = params.disciplina
		disciplina.cargaHoraria = params.cargaHoraria
	
		

		
		def disciplinas = Disciplina.findAll()

		
			if(disciplina.save(flush:true)){
			
				render(view:"/disciplina/listarDisciplina.gsp", model:[
					disciplinas:disciplinas,
					ok : "Disciplina atualizada com sucesso!"
					
				])
				
			}else{
				render(view:"/disciplina/editarDisciplina.gsp", model:[disciplinas:disciplinas,
					erro : "Erro ao atualizar!"
				])
			}
		
	}


	def salvar(){

		Disciplina disciplina = new Disciplina()

			disciplina.disciplina = params.disciplina
			disciplina.cargaHoraria = params.cargaHoraria		
			
			def disciplinas = Disciplina.findAll()		

			if(disciplina.save(flush:true)){

				render(view:"/disciplina/listarDisciplina.gsp", model:[
					disciplinas:disciplinas,
					ok : "Disciplina cadastrada com sucesso!"

				])
			}else{

				render(view:"/disciplina/listarDisciplina.gsp", model:[
					disciplina:disciplina,
					erro : "Erro ao Salvar Disciplina!"
				])
			}
		
	}
}
