package br.gov.rn.saogoncalo.pessoa

class Aluno {
	Cidadao cidadao	
	String numeroDeInscricao
	
	static constraints = {
		numeroDeInscricao blank:true, nullable:true
	}
	
	static mapping = {
		table name: "aluno", schema:"cadastro_unico_pessoal"
		cidadao column: 'id', insertable: false, updateable: false
		cidadao ignoreNotFound: true
		version false
		id generator: 'sequence', params:[sequence:'cadastro_unico_pessoal.aluno_id_seq']
	}
}
