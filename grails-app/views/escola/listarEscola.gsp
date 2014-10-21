<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Escola - Modulo Pessoal</title>
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
		<h4 style="margin-bottom: -35px;">Escolas Cadastrados</h4>
		<table id="example" class="table table-striped table-hover">
			<g:if test="${!escolas?.isEmpty()})"></g:if>
			<thead>
				<tr>
					<th style="width: 40px;"></th>
					<th style="width: 280px;">Nome</th>
					<th style="width: 60px;">CNPJ</th>
					<th style="width:;">Data de Fundação</th>
					<th style="width:;">Razão Social</th>
					<th style="width:;">Inscrição Estadual</th>
					<th style="width:;">INEP</th>
				</tr>
			</thead>
			<tbody>
				<g:each in='${escolas?}'>
					<g:set var="pessoa"	value="${it.pessoaJuridica.pessoa}" />
					<g:set var="pessoaJuridica" value="${it.pessoaJuridica}" />
					<tr class='linha_registro'>
						<td>
							<div class="opcoes">
								<ul>
								<li class="btn btn-info btn-xs"><a href="/DBMetafora/escola/editarEscola/${pessoa.id}"><span class="glyphicon glyphicon-pencil"></span>
									</a>
								</li>
								<button type="button" class="btn btn-danger btn-xs">
									<span class="glyphicon glyphicon-remove"></span>
								</button>
								</ul>
							</div>
						</td>
						<td>
							${pessoa.nome}
						</td>
						<td>
							${pessoa.cpfCnpj}
						</td>
						<td><g:formatDate format="dd/MM/yyyy"
								date="${pessoa.dataDeNascimento}" />
						</td>
						<td>
							${pessoaJuridica.razaoSocial}
						</td>
						<td>
							${pessoaJuridica.inscricaoEstadual}
						</td>
						<td>
							${it.inepDaEscola}
						</td>
					</tr>
				</g:each>

			</tbody>
		</table>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#example').DataTable();
				var tabela = $('#example').dataTable();
				// Ordena por nome e "desempata" com o id
				tabela.fnSort([ [ 1, 'asc' ] ]);
			});
		</script>
		<!-- Button trigger modal -->
		<button class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">Cadastrar</button>
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Cadastro de
							Escola</h4>
					</div>
					<div class="modal-body">
						<g:form controller="Escola" action="salvar" class="form">
							<fieldset>
								<div class="form-heading">
									<label>Nome</label>
									<div class="controls">
										<g:textField class="form-control" required="true" name="nome"
											value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Data de Fundação</label>
									<div class="controls">
										<g:formatDate format="yyyy-MM-dd" date="${date}" />
										<g:datePicker noSelection="['':'']" precision="day"
											class="form-control" required="true" name="dataDeNascimento"
											value="" />

									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>CNPJ</label>
									<div class="controls">
										<g:textField class="form-control" required="true" id="cpf"
											name="cpfCnpj" value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Razão Social</label>
									<div class="controls">
										<g:textField class="form-control" name="razaoSocial" value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Inscrição Estadual</label>
									<div class="controls">
										<g:textField class="form-control" name="inscricaoEstadual"
											value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>INEP</label>
									<div class="controls">
										<g:textField class="form-control" name="inepDaEscola"
											value="" />
									</div>
								</div>
								<br>								
							</fieldset>
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary btn">Cadastrar</button>
								<input type="reset" class="btn btn" value="Limpar">
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>