package br.gov.rn.saogoncalo.pessoa

import br.gov.rn.saogoncalo.academico.Sala

class Escola {
	PessoaJuridica pessoaJuridica
	String inepDaEscola
	
	static hasMany = [sala:Sala]
	
	static constraints = {
	
		inepDaEscola blank:false, nullable:true
		
		}
	
	static mapping = {
		table name: "escola", schema:"cadastro_unico_pessoal"
		pessoaJuridica column: 'id', insertable: false, updateable: false, generator: 'assigned'
		pessoaJuridica ignoreNotFound: true
		version false
		id generator: 'sequence', params:[sequence:'cadastro_unico_pessoal.escola_id_seq']
	}
}
