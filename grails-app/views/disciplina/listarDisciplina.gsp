<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Disciplina . Modulo Academico</title>
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
        var resposta = confirm("Deseja exluir esta Disciplina?");

        if (resposta == true){
        location.href="/projetoMetaforaLocal/disciplina/deletar/"+id }

       }
 </script>
	<!-- MENU LATERAL -->
	<div id="side">
		<ul class="nav nav-pills nav-stacked">
			<li><g:link controller="Professor" action="listar">Professor</g:link></li>
			<li class="active"><g:link controller="Aluno" action="listar">Aluno</g:link></li>
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
		<h4 style="margin-bottom: -35px;">Disciplinas Cadastradas</h4>
		<table id="example" class="table table-striped table-hover">
			<g:if test="${!disciplinas?.isEmpty()})"></g:if>
			<thead>
				<tr>
					<th style="width: 40px;"></th>
					<th style="width: 120px;">Disciplina</th>
					<th style="width: 60px;">Carga Horaria</th>
				
					
				</tr>
			</thead>
			<tbody>
				<g:each in='${disciplinas?}'>
				
				
					<tr class='linha_registro'>
						<td>

							<div style="margin-left: -35px" class="opcoes">
								<ul style="display: inline">
									<li class="btn btn-info btn-xs"><a style="color: #fff"
										href="/projetoMetaforaLocal/disciplina/editarDisciplina/${it.id}"><span
											class="glyphicon glyphicon-pencil"></span></a></li>
									<li onclick="deletar(${it.id})"
										class="btn btn-danger btn-xs"><span
										class="glyphicon glyphicon-remove"></span></li>
								</ul>

							</div>
						</td>
						
						<td>${it.disciplina}
							
						</td>
						<td>
							${it.cargaHoraria}
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
						<h4 class="modal-title" id="myModalLabel">Cadastro de Disciplina</h4>
					</div>
					<div class="modal-body">
						<g:form controller="Disciplina" action="salvar" class="form">
							<fieldset>
								<div class="form-heading">
									<label>Nome da Disciplina</label>
									<div class="controls">
										<g:textField class="form-control" required="true" name="disciplina"
											value="" />
									</div>
								</div>
								<br>
								<div class="form-heading">
									<label>Carga Horária</label>
									<div class="controls">
										<g:textField class="form-control"  
											name="cargaHoraria" value="" required="true" />
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
