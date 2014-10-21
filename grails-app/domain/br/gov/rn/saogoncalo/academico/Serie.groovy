package br.gov.rn.saogoncalo.academico

import java.util.Date;

class Serie {
	String serie
	Long numeroDeVagas
	Date dataDeInicio
	Date dataDeTermino

	static hasMany = [turma:Turma]

	static constraints = {
		serie blank:false, nullable:false
		numeroDeVagas blank:false, nullable:false
		dataDeInicio nullable:false, blank:false
		dataDeTermino nullable:false, blank: false
	}
	
	static mapping = {
		table name: "serie", schema:"educacao_academico"
		version false
		}
}
