<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />

<link rel="shortcut icon" href="${resource(dir:'images', file:'favicon.ico')}" type="image/x-icon" />

<title><g:layoutTitle default="Sistema Acadêmico"/></title>

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
	width: 10%;
	margin-top: 60px;
}
#content {
	float: right;
	width: 88%;
	margin-left: 300px;
	margin-top: -160px;
	margin-right: 16px;
}
#content-academico{
	float: right;
	width: 88%;
	margin-left: 300px;
	margin-top: -410px;
	margin-right: 16px;
}
#footer {
	position: relative;
	margin-top: -45px;
	padding-top: 0px;
	height: 10px;
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
			<g:layoutBody/>
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