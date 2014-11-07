<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Escola . Modulo Academico</title>
<meta name="layout" content="public" />
<g:javascript src="jquery.js" />
<g:javascript src="jquery.maskedinput.js" />
</head>
</head>
<body>
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
		<h4 style="margin-bottom: 5px;">Editar Turma</h4>

		<g:each in='${turmas?}'>
			
		</g:each>
		<div style="margin-left: 120px">
			<g:form controller="Turma" action="atualizar"
				class="form-horizontal">
				<g:hiddenField type="number" name="id" value="${it.id}" />
				<fieldset>
					<div class="form-group">
						<label for="inputTurma3" class="col-sm-2 control-label">Nome da Turma</label>
						<div class="col-sm-10">
							<input class="form-control" required name="turma" type="text"
								style="width: 300px" value="${it.turma}">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputVagas3" class="col-sm-2 control-label">Vagas</label>
						<div class="col-sm-10">
							<g:textField class="form-control" required="true" 
								name="vagas" style="width: 300px" value="${it.vagas }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputSerieId3" class="col-sm-2 control-label">Serie</label>
						<div class="col-sm-10">
						
					
							<g:select name="serieId" from="${br.gov.rn.saogoncalo.academico.Serie.list()}"
										value="${it.serie.id}" optionKey="id" optionValue="serie" />
							
						</div>
					</div>
					<br>
				</fieldset>
				<div style="margin-left: 220px">
					<button type="submit" class="btn btn-primary btn">Atualizar</button>
					<ul style="display: inline-block; margin-left: -30px">
						<li class="btn btn-default btn"><a
							href="/projetoMetafora/turma/listar/">Cancelar</a></li>
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