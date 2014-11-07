package br.gov.rn.saogoncalo.pessoa



import java.util.Date;

class Pessoa {
	String nome
	Date dataDeNascimento
	String cpfCnpj
	
	
	

	static constraints = {
		
		nome blank:false,nullable:true
		dataDeNascimento blank:false,nullable:true
		cpfCnpj blank:true, nullable:true, unique:true
		
		
	}
	static mapping = {
		table name: "pessoa", schema:"cadastro_unico_pessoal"
		version false
		id generator: 'sequence', params:[sequence:'cadastro_unico_pessoal.pessoa_id_seq']
	}
}
