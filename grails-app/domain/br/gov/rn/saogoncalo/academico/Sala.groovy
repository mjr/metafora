package br.gov.rn.saogoncalo.academico

import org.hibernate.cfg.IndexColumn;

class Sala {
	String sala
	int vagas
	
	static hasMany = [horario:Horario]
	
	static constraints = {
		sala blank:false, nullable:false
		vagas blank:false, nullable:true
	}
	
	static mapping = {
		table name: "sala", schema:"educacao_academico"
		vagas defaultValue: null
		version false
		}
}
