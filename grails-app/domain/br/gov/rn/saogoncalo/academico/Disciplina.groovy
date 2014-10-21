package br.gov.rn.saogoncalo.academico

class Disciplina {
	String disciplina
	String cargaHoraria

	static hasMany = [disciplinaLecionadaPorProfessor:DisciplinaLecionadaPorProfessor,
		conteudoDaDisciplina:ConteudoDaDisciplina]
	

	static constraints = {
		disciplina blank:false, nullable:false
		cargaHoraria blank:false, nullable:false
	}
	static mapping = {
		table name: "disciplina", schema:"educacao_academico"
		version false
		}
}
