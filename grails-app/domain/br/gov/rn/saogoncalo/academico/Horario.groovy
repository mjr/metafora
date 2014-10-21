package br.gov.rn.saogoncalo.academico

class Horario {
	String horario
	
	static belongsTo = [turmaDisciplina:TurmaDisciplina, sala:Sala]
	
	static constraints = {
		horario blank:false, nullable:false
	}
	static mapping = {
		table name: "horario", schema:"educacao_academico"
		version false
		}
}
