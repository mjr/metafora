package br.gov.rn.saogoncalo.academico

class Turma {
	String turma
	int vagas
	Long serieId
	
	
	
	static hasMany = [turmaDisciplina:TurmaDisciplina]
	static belongsTo = [serie:Serie]
	
	static constraints = {
		turma blank:false, nullable:false
		vagas blank:false, nullable:false
	}
	static mapping = {
		table name: "turma", schema:"educacao_academico"
		serieId column: 'id', insertable: false, updateable: false
		version false
		id generator: 'sequence', params:[sequence:'educacao_academico.turma_id_seq']
		}
}
