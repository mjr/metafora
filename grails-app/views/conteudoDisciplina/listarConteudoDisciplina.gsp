<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Conteúdo da Disciplina . Módulo Acadêmico</title>
<meta name="layout" content="public" />
<g:javascript src="jquery.js" />
<g:javascript src="jquery.maskedinput.js" />
</head>
<body>
	<!-- MENU LATERAL -->
	<div id="side">
		<ul class="nav nav-pills nav-stacked">
			<li class="active"><g:link controller="ConteudoDaDisciplina"
					action="listar">Conteúdo da Disciplina</g:link></li>
			<li><g:link controller="TurmaDisciplina" action="listar">Curso</g:link></li>
			<li><g:link controller="Disciplina" action="listar">Disciplina</g:link></li>
			<li><g:link controller="DisciplinaLecionadaPorProfessor"
					action="listar">Disciplina por Professor</g:link></li>
			<li><g:link controller="Horario" action="listar">Horário</g:link></li>
			<li><g:link controller="Matricula" action="listar">Matricula</g:link></li>
			<li><g:link controller="Sala" action="listar">Sala</g:link></li>
			<li><g:link controller="Serie" action="listar">Série</g:link></li>
			<li><g:link controller="Turma" action="listar">Turma</g:link></li>
		</ul>
	</div>
	<!-- CORPO DA PÁGINA -->
	<div id="content-academico">
		<h4 style="margin-bottom: -35px;">Conteúdos das Disciplinas Cadastradas</h4>
		<table id="example" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Nome</th>
					<th>Matricula</th>
					<th>Ano de Início</th>
					<th>Disciplina</th>
					<th>Ativo</th>
				</tr>
			</thead>
			<tbody>

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
						<h4 class="modal-title" id="myModalLabel">Cadastro</h4>
					</div>
					<div class="modal-body">
						<form role="form">
							<div class="row">
								<div class="col-xs-7">
									<label for="exampleInputNome1">Nome</label> <input type="text"
										class="form-control" id="exampleInputNome1"
										placeholder="Nome Completo">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-3">
									<label for="exampleInputRG1">RG</label> <input type="number"
										class="form-control" id="exampleInputRG1" min="000000001"
										max="999999999" size="12" maxlength="9" placeholder="RG">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-3">
									<label for="exampleInputCPF1">CPF</label> <input type="number"
										class="form-control" id="exampleInputCPF1" min="00100000000"
										max="99999999999" maxlength="11" placeholder="CPF">
								</div>
							</div>
							<br />
							<div class="form-group">
								<label for="exampleInputSexo1" id="exampleInputSexo1">Sexo</label><br />
								<label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
									Masculino
								</label> <label class="radio-inline"> <input type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
									Feminino
								</label>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-3">
									<label for="exampleInputMatricula1">Matricula</label> <input
										type="number" class="form-control" id="exampleInputMatricula1"
										min="20141" max="2014200" placeholder="Matricula">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-6">
									<label for="exampleInputEmail1">Email</label> <input
										type="email" class="form-control" id="exampleInputEmail1"
										placeholder="Email">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-3">
									<label for="exampleInputTel1">Telefone</label> <input
										type="tel" class="form-control" id="exampleInputTel1"
										placeholder="Telefone">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-4">
									<label for="exampleInputDisciplina1">Disciplina</label> <select
										id="exampleInputDisciplina1" class="form-control">
										<option>Português</option>
										<option>Matemática</option>
										<option>Física</option>
										<option>Geografia</option>
										<option>Música</option>
									</select>
								</div>
							</div>
							<br /> <br />
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
						<button type="button" class="btn btn-primary">Salvar</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>