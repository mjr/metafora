<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Turma . Módulo Acadêmico</title>
<meta name="layout" content="public" />
<g:javascript src="jquery.js" />
<g:javascript src="jquery.maskedinput.js" />
</head>
<body>
	<script>
       function deletar(id) {
        var resposta = confirm("Deseja exluir esta Turma?");

        if (resposta == true){
        location.href="/projetoMetafora/turma/deletar/"+id }

       }
 </script>
	<!-- MENU LATERAL -->
	<div id="side">
		<ul class="nav nav-pills nav-stacked">
			<li><g:link controller="ConteudoDaDisciplina" action="listar">Conteúdo da Disciplina</g:link></li>
			<li><g:link controller="TurmaDisciplina" action="listar">Curso</g:link></li>
			<li><g:link controller="Disciplina" action="listar">Disciplina</g:link></li>
			<li><g:link controller="DisciplinaLecionadaPorProfessor"
					action="listar">Disciplina por Professor</g:link></li>
			<li><g:link controller="Horario" action="listar">Horário</g:link></li>
			<li><g:link controller="Matricula" action="listar">Matricula</g:link></li>
			<li><g:link controller="Sala" action="listar">Sala</g:link></li>
			<li><g:link controller="Serie" action="listar">Série</g:link></li>
			<li class="active"><g:link controller="Turma" action="listar">Turma</g:link></li>
		</ul>
	</div>
	<!-- CORPO DA PÁGINA -->
	<div id="content-academico">
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
		<h4 style="margin-bottom: -35px;">Turmas Cadastradas</h4>
		<table id="example" class="table table-striped table-hover">
			<thead>
				<tr>
					<th></th>
					<th>Turma</th>
					<th>Vagas</th>
					<th>Série</th>
				</tr>
			</thead>
			<tbody>
				<g:each in='${turmas?}'>
					
					<tr class='linha_registro'>
						<td>

							<div style="margin-left: -35px" class="opcoes">
								<ul style="display: inline">
									<li class="btn btn-info btn-xs"><a style="color: #fff"
										href="/projetoMetafora/turma/editarTurma/${it.id}"><span
											class="glyphicon glyphicon-pencil"></span></a></li>
									<li onclick="deletar(${it.id})" class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span></li>
								</ul>

							</div>
						</td>
						<td>
							${it.turma}
						</td>
						<td>
							${it.vagas}
						</td>
						<td>
							${it.serie.serie}
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
						<h4 class="modal-title" id="myModalLabel">Cadastro</h4>
					</div>
					<div class="modal-body">
						<g:form controller="Turma" action="salvar" class="form">
							<fieldset>
							<div class="row">
								<div class="col-xs-7">
									<g:hiddenField name="id" value="id" />
								</div>
							
							</div>
							<div class="row">
								<div class="col-xs-7">
									<label for="exampleInputTurma1">Nome da Turma</label> <g:textField class="form-control" required="true"
											name="turma" value="" />
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-3">
									<label for="exampleInputVagas1">Nº de Vagas</label> <div class="controls">
										<g:textField class="form-control" required="true"
											name="vagas" value="" />
									</div>
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-3">
									<label for="exampleInputSerieId1">Série</label>
									<g:select name="serieId" from="${br.gov.rn.saogoncalo.academico.Serie.list()}"
										value="${id}" optionKey="id" optionValue="serie" />
								</div>
							</div>
							<br /> <br /> <br />
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
</body>
</html>