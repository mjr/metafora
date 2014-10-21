package br.gov.rn.saogoncalo.academico

import java.util.Date;

class DisciplinaLecionadaPorProfessor {
	String situacao
	Date data
	
	static hasMany = [turmaDisciplina:TurmaDisciplina]
	static belongsTo = [disciplina:Disciplina]
	
	static constraints = {
		situacao blank:false, nullable:false
		data blank:false, nullable:false
	}
	
	static mapping = {
		table name: "disciplina_lecionada_por_professor", schema:"educacao_academico"
		version false
		}
}
