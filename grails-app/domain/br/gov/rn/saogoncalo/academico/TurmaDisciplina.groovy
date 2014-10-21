package br.gov.rn.saogoncalo.academico

import java.util.Date;

class TurmaDisciplina {
	String identificacao
	Date dataInicio
	Date dataTermino
	
	static belongsTo = [turma:Turma,
		disciplinaLecionadaPorProfessor:DisciplinaLecionadaPorProfessor]
	static hasMany = [horario:Horario]
	
	static constraints = {
		identificacao unique:true, blank:false, nullable:false
		dataInicio nullable:false, blank:false
		dataTermino nullable:false, blank:false
	}
	static mapping = {
	table name: "turma_disciplina", schema:"educacao_academico"
	version false
	}
}
