package br.gov.rn.saogoncalo.academico

class Turma {
	String turma
	int vagas
	
	static hasMany = [turmaDisciplina:TurmaDisciplina]
	

	static constraints = {
		turma blank:false, nullable:false
		vagas blank:false, nullable:false
	}
	static mapping = {
		table name: "turma", schema:"educacao_academico"
		version false
		id generator: 'sequence', params:[sequence:'educacao_academico.turma_id_seq']
		}
}
