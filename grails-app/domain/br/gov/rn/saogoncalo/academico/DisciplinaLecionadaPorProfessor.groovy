package br.gov.rn.saogoncalo.academico

class DisciplinaLecionadaPorProfessor {
	String situacao
	Date data
	
	static belongsTo = [disciplina:Disciplina]
	
	static hasMany = [turmaDisciplina:TurmaDisciplina]
	
	static constraints = {
		situacao blank:false, nullable:false
		data blank:false, nullable:false
	}
	
	static mapping = {
		table name: "disciplina_lecionada_por_professor", schema:"educacao_academico"
		version false
		id generator: 'sequence', params:[sequence:'educacao_academico.disciplina_lecionada_por_professor_id_seq']
		}
}
