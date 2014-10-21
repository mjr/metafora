package br.gov.rn.saogoncalo.academico

import java.util.Date;

class Matricula {
	Date dataDaMatricula
	String matricula
	
	static belongsTo = [turma:Turma]
	
	static constraints = {
		dataDaMatricula nullable:false, blank:false
		matricula unique:true, nullable:false, blank:false
	}
	
	static mapping = {
		table name: "matricula", schema:"educacao_academico"
		version false
		}
}
