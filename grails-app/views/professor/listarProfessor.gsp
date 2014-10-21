<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Professor . Modulo Pessoal</title>
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
<script>
       function deletar(id) {
        var resposta = confirm("Deseja exluir este professor?");

        if (resposta == true){
        location.href="/DBMetafora/professor/deletar/"+id }

       }
 </script>
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
		<h4 style="margin-bottom: -35px;">Professores Cadastrados</h4>
		<table id="example" class="table table-striped table-hover">
			<g:if test="${!professores?.isEmpty()})"></g:if>
			<thead>
				<tr>
					<th style="width: 40px;"></th>
					<th style="width: 280px;">Nome</th>
					<th style="width: 60px;">CPF</th>
					<th style="width:;">Matricula</th>
					<th style="width:;">Data de Nascimento</th>
					<th style="width:;">Sexo</th>
					<th style="width:;">Estado Civil</th>
				</tr>
			</thead>
			<tbody>
				<g:each in='${professores?}'>
					<g:set var="pessoa"
						value="${it.funcionario.cidadao.pessoaFisica.pessoa}" />
					<g:set var="funcionario" value="${it.funcionario }" />
					<g:set var="pessoaFisica"
						value="${it.funcionario.cidadao.pessoaFisica}" />
					<g:set var="cidadao" value="${it.funcionario.cidadao}" />
					<tr class='linha_registro'>
						<td>

							<div style="margin-left: -35px" class="opcoes">
								<ul style="display: inline">
									<li class="btn btn-info btn-xs"><a style="color: #fff"
										href="/Metafora/professor/editarProfessor/${pessoa.id}"><span
											class="glyphicon glyphicon-pencil"></span></a></li>
									<li onclick="deletar(${pessoa.id})"
										class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span></li>
								</ul>

							</div>
						</td>
						<td>
							${pessoa.nome}
						</td>
						<td>
							${pessoa.cpfCnpj}
						</td>
						<td>
							${funcionario.matricula}
						</td>
						<td><g:formatDate format="dd/MM/yyyy"
								date="${pessoa.dataDeNascimento}" /></td>
						<td>
							${pessoaFisica.sexo}
						</td>
						<td>
							${cidadao.estadoCivil}
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
							Professor</h4>
					</div>
					<div class="modal-body">
						<g:form controller="Professor" action="salvar" class="form">
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
									<label>Data de Nascimento</label>
									<div class="controls">
										<g:formatDate format="yyyy-MM-dd" date="${date}" />
										<g:datePicker noSelection="['':'']" precision="day"
											class="form-control" required="true" name="dataDeNascimento"
											value="" />

									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>CPF</label>
									<div class="controls">
										<g:textField class="form-control" required="true" id="cpf"
											name="cpfCnpj" value=""/>
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Número do Registro de Cartório</label>
									<div class="controls">
										<g:textField class="form-control" name="rcNumero" value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Nome do Cartório do Registro de Cartório</label>
									<div class="controls">
										<g:textField class="form-control" name="rcNomeDoCartorio"
											value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Nome do Livro do Registro de Cartório</label>
									<div class="controls">
										<g:textField class="form-control" name="rcNomeDoLivro"
											value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Folha do Livro do Registro de Cartório</label>
									<div class="controls">
										<g:textField class="form-control" name="rcFolhaDoLivro"
											value="" />
									</div>
									<br>
									<div class="form-heading">
										<label>Sexo</label>
										<div class="controls">
											<label class="radio-inline"> <input type="radio"
												name="sexo" id="inlineRadio1" value="MASCULINO">MASCULINO
											</label> <label class="radio-inline"> <input type="radio"
												name="sexo" id="inlineRadio2" value="FEMININO">FEMININO
											</label>
										</div>
									</div>
									<br>
									<div class="form-heading">
										<label>Nacionalidade</label>
										<div class="controls">
											<g:textField class="form-control" required="true"
												name="nacionalidade" value="" />
										</div>
									</div>
									<br>
									<div class="form-heading">
										<label>Estado Civil</label>
										<div class="controls">
											<select class="form-control" name="estadoCivil">
												<option value="null">Selecione...</option>
												<option value="SOLTEIRO(A)">SOLTEIRO(A)</option>
												<option value="CASADO(A)">CASADO(A)</option>
												<option value="DIVORCIADO(A)">DIVORCIADO(A)</option>
												<option value="VIÚVO(A)">VIÚVO(A)</option>
											</select>
										</div>
									</div>
									<br>
									<div class="form-heading">
										<label>Profissão</label>
										<div class="controls">
											<g:textField class="form-control" required="true"
												name="profissao" value="" />
										</div>
									</div>
									<br>
									<div class="form-heading">
										<label>Carga Horária</label>
										<div class="controls">
											<g:textField class="form-control" required=""
												name="cargaHoraria" value="" />
										</div>
									</div>
									<br>
									<div class="form-heading">
										<label>Matricula</label>
										<div class="controls">
											<g:textField class="form-control" required="true"
												name="matricula" value="" />
										</div>
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Identificação</label>
									<div class="controls">
										<g:textField class="form-control" name="identificacao"
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
