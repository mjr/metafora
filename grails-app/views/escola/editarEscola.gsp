<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Escola . Modulo Pessoal</title>
<meta name="layout" content="public" />
<g:javascript src="jquery.js" />
<g:javascript src="jquery.maskedinput.js" />
</head>
<script type="text/javascript">
	$().ready(function() {
		$('#cpf').mask('999.999.999-99');

	});
</script>
</head>
<body>
	<!-- MENU LATERAL -->
	<div id="side">
		<ul class="nav nav-pills nav-stacked">
			<li class="active"><g:link controller="Professor"
					action="listar">Professor</g:link></li>
			<li><g:link controller="Aluno" action="listar">Aluno</g:link></li>
			<li><g:link controller="Funcionario" action="listar">Funcionário</g:link></li>
			<li class="active"><g:link controller="Escola"
					action="listar">Escola</g:link></li>
		</ul>
	</div>
	<!-- CORPO DA PÁGINA -->
	<div id="content">
		<g:if test="${ok}">
			<div class="alert alert-success">
				${ok}
			</div>
		</g:if>
		<g:if test="${erro}">
			<div class="alert alert-danger">
				${erro}
			</div>
		</g:if>
		<h4 style="margin-bottom: 5px;">Editar Escola</h4>

		<g:each in='${escolas?}'>
			<g:set var="pessoa"
				value="${it.pessoaJuridica.pessoa}" />
			<g:set var="pessoaJuridica" value="${it.pessoaJuridica }" />
		</g:each>
		<div style="margin-left: 120px">
			<g:form controller="Escola" action="atualizar"
				class="form-horizontal">
				<g:hiddenField type="number" name="id" value="${pessoa?.id}" />
				<fieldset>
					<div class="form-group">
						<label for="inputNome3" class="col-sm-2 control-label">Nome</label>
						<div class="col-sm-10">
							<input class="form-control" required name="nome" type="text"
								style="width: 300px" value="${pessoa.nome }">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputData3" class="col-sm-2 control-label">Data
							de Fundação</label>
						<div class="col-sm-10">
							<g:formatDate format="yyyy-MM-dd" date="${date}" />
							<g:datePicker noSelection="['':'']" precision="day"
								class="form-control" required="true" name="dataDeNascimento"
								value="${pessoa.dataDeNascimento}" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputCpfCnpj3" class="col-sm-2 control-label">CNPJ</label>
						<div class="col-sm-10">
							<g:textField class="form-control" required="true" id="cpf"
								name="cpfCnpj" style="width: 300px" value="${pessoa.cpfCnpj }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputrazaoSocial3" class="col-sm-2 control-label">Razão Social</label>
						<div class="col-sm-10">
							<g:textField class="form-control" name="razaoSocial"
								style="width: 300px" value="${pessoaJuridica.razaoSocial }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputinscricaoEstadual3" class="col-sm-2 control-label">Inscrição Estadual</label>
						<div class="col-sm-10">
							<g:textField class="form-control" name="inscricaoEstadual"
								style="width: 300px" value="${pessoaJuridica.inscricaoEstadual }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputinepDaEscola3" class="col-sm-2 control-label">INEP</label>
						<div class="col-sm-10">
							<g:textField class="form-control" name="inepDaEscola"
								style="width: 300px" value="${it.inepDaEscola }" />
						</div>
					</div>
					<br>
				</fieldset>
				<div style="margin-left: 220px">
					<button type="submit" class="btn btn-primary btn">Atualizar</button>
					<ul style="display: inline-block; margin-left: -30px">
						<li class="btn btn-default btn"><a
							href="/DBMetafora/escola/listar/">Cancelar</a></li>
					</ul>
				</div>
			</g:form>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#example').DataTable();
				var tabela = $('#example').dataTable();
				// Ordena por nome e "desempata" com o id
				tabela.fnSort([ [ 1, 'asc' ] ]);
			});
		</script>
	</div>
</body>
</html>