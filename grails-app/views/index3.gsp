<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="shortcut icon" href="images/favicon-setic.png">

<title>Sistema Acadêmico</title>


<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="${resource(dir: 'css', file: 'bootstrap.min.css')}"
	rel="stylesheet">
<link href="css/dataTables.bootstrap.css" rel="stylesheet" />
<link href="${resource(dir: 'css', file: 'dataTables.bootstrap.css')}"
	rel="stylesheet">


<g:javascript src="jquery.js" />
<g:javascript src="jquery.js" />
<g:javascript src="jquery.min.js" />

<g:javascript src="jquery.dataTables.min.js" />
<g:javascript src="dataTables.bootstrap.js" />

<g:javascript src="dataScript.js" />

<g:javascript src="bootstrap.min.js" />

<style>
.opcoes {
	visibility: hidden;
}

tr.linha_registro:hover .opcoes {
	visibility: visible;
}

body {
	overflow-y: hidden;
}
html, body, #wrap {
	height: 100%;
}

body>#wrap {
	height: auto;
	min-height: 100%;
}
#main {
	overflow: auto;
	padding-bottom: 60px;
}
#side {
	float: left;
	width: 150px;
	margin-top: -205px;
}
#content {
	float: right;
	width: 1000px;
	margin-left: 180px;
	margin-top: 60px;
	margin-right: 30px;
}
#footer {
	position: relative;
	margin-top: -60px;
	height: 50px;
	clear: both;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="main">
			<div id="header">
				<nav class="navbar navbar-default navbar-fixed-top"
					role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<g:link class="navbar-brand" controller="Pessoa" action="index">Sistema Acadêmico</g:link>
						</div>
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Módulos <span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">

										<li><g:link controller="Pessoa" action="pessoal">Pessoal</g:link></li>
										<li><g:link controller="ConteudoDaDisciplina"
												action="academico">Acadêmico</g:link></li>
									</ul></li>
							</ul>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Pesquisar">
								</div>
								<button type="submit" class="btn btn-default">Buscar</button>
							</form>
							<ul class="nav navbar-nav navbar-right">
								<li style="margin-right: 15px;" class="dropdown"><a
									href="#" class="dropdown-toggle" data-toggle="dropdown">Setic
										<span class="caret"></span>
								</a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Configurações</a></li>
										<li><a href="#">Sair</a></li>
									</ul></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</div>
			<div id="content">
				<h4 style="margin-bottom: -30px;">Professores Cadastrados</h4>
				<table id="example" class="display" cellspacing="0" width="100%">
					<g:if test="${!professores?.isEmpty()})"></g:if>
					<thead>
						<tr>
							<th style="width: 40px;"></th>
							<th style="width: 280px;">Nome</th>
							<th style="width: 60px;">CPF</th>
							<th style="width:;">Matricula</th>
							<th style="width:;">Data de Nascimento</th>
							<th style="width:;">Sexo</th>
							<th style="width:;">Disciplina</th>
							<th style="width:;">Escola</th>
						</tr>
					</thead>
					<tbody>
						<g:each in='${professores?}'>
							<g:set var="pessoa"
								value="${it.funcionario.cidadao.pessoaFisica.pessoa}" />
							<g:set var="funcionario" value="${it.funcionario }" />
							<g:set var="pessoaFisica"
								value="${it.funcionario.cidadao.pessoaFisica}" />
							<tr class='linha_registro'>
								<td>
									<div class="opcoes">
										<button class="btn btn-info btn-xs" type="button">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
										<button class="btn btn-danger btn-xs " type="button">
											<span class="glyphicon glyphicon-remove"></span>
										</button>
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
								<td>teste</td>
								<td>teste2</td>
							</tr>
						</g:each>

					</tbody>
				</table>
				<script type="text/javascript">
					$('#example').removeClass('display').addClass(
							'table table-striped table-hover');
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
												<g:textField class="form-control" required="true"
													name="nome" value="" />
											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>Data de Nascimento</label>
											<div class="controls">
												<g:formatDate format="yyyy-MM-dd" date="${date}" />
												<g:datePicker noSelection="['':'Escolha']" precision="day"
													class="form-control" required="true"
													name="dataDeNascimento" value="" />

											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>CPF</label>
											<div class="controls">
												<g:textField class="form-control" required="true"
													name="cpfCnpj" value="" />
											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>Número do Registro de Cartório</label>
											<div class="controls">
												<g:textField class="form-control" required=""
													name="rcNumero" value="" />
											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>Nome do Cartório do Registro de Cartório</label>
											<div class="controls">
												<g:textField class="form-control" required=""
													name="rcNomeDoCartorio" value="" />
											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>Nome do Livro do Registro de Cartório</label>
											<div class="controls">
												<g:textField class="form-control" required=""
													name="rcNomeDoLivro" value="" />
											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>Folha do Livro do Registro de Cartório</label>
											<div class="controls">
												<g:textField class="form-control" required=""
													name="rcFolhaDoLivro" value="" />
											</div>
										</div>
										<br>
										<div class="form-heading">
											<label>Sexo</label>
											<div class="controls">
												<label class="radio-inline"> <g:radioGroup
														name="sexo" labels="['MASCULINO','FEMININO']"
														values="[MASCULINO,FEMININO]">
														<p>
															${it.radio}
															${it.label}
														</p>
													</g:radioGroup>
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
										<br>
										<div class="form-heading">
											<label>Identificação</label>
											<div class="controls">
												<g:textField class="form-control" required=""
													name="identificacao" value="" />
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
			<div id="side">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><g:link controller="Professor"
							action="listar">Professor</g:link></li>
					<li><g:link controller="Aluno" action="listar">Aluno</g:link></li>
					<li><g:link controller="Funcionario" action="listar">Funcionário</g:link></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="panel-footer">
			<p style="text-align: right;">© 2014 Metafora. Todos os direitos
				reservados. Design & Desenvolvimento por SETIC</p>
		</div>
	</div>
</body>
</html>