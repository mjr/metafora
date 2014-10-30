<!DOCTYPE html>
<html lang="pt-br">
<<<<<<< HEAD
<head>
<title>Modulo Pessoal</title>
<meta name="layout" content="public" />
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
			<li class="active"><g:link controller="Horario" action="listar">Horario</g:link></li>
			<li><g:link controller="Matricula" action="listar">Matricula</g:link></li>
			<li><g:link controller="Sala" action="listar">Sala</g:link></li>
			<li><g:link controller="Serie" action="listar">Serie</g:link></li>
			<li><g:link controller="Turma" action="listar">Turma</g:link></li>
		</ul>
	</div>
	<!-- CORPO DA PÁGINA -->
	<div id="content" style="margin-top: -410px">
		<table id="example" class="display" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th></th>
					<th>ID</th>
					<th>HORÁRIO</th>
					<th>SALA</th>
					<th>TURMA DISCIPLINA</th>
					<th>TURMA</th>
					<th>DISCIPLINA</th>

				</tr>
			</thead>
			<tbody>
				<g:each in='${horarios?}'>
					<g:set var="sala" value="${it.sala}" />
					
					<g:set var="turmaDisciplina" value="${it.turmaDisciplina}" />

					<tr class='linha_registro'>
						<td>
							<div style="margin-left: -35px" class="opcoes">
								<ul style="display: inline">
									<li class="btn btn-info btn-xs"><a style="color: #fff"
										href="/ProjetoMetafora/horario/listarHorario/${it.id}"><span
											class="glyphicon glyphicon-pencil"></span></a></li>
									<li onclick="deletar(${it.id})" class="btn btn-danger btn-xs"><span
=======
	<head>
		<title>Modulo Academico</title>
		<meta name="layout" content="public"/>
	</head>
	<body>
		<!-- MENU LATERAL -->
		<div id="side">
			<ul class="nav nav-pills nav-stacked">
			  <li><g:link controller="ConteudoDaDisciplina" action="listar">Conteúdo da Disciplina</g:link></li>
			  <li><g:link controller="TurmaDisciplina" action="listar">Curso</g:link></li>
			  <li><g:link controller="Disciplina" action="listar">Disciplina</g:link></li>
			  <li><g:link controller="DisciplinaLecionadaPorProfessor" action="listar">Disciplina por Professor</g:link></li>
			  <li class="active"><g:link controller="Horario" action="listar">Horario</g:link></li>
			  <li><g:link controller="Matricula" action="listar">Matricula</g:link></li>
			  <li><g:link controller="Sala" action="listar">Sala</g:link></li>
			  <li><g:link controller="Serie" action="listar">Serie</g:link></li>
			  <li><g:link controller="Turma" action="listar">Turma</g:link></li>
			</ul>	
		</div>
		<!-- CORPO DA PÁGINA -->
		<div id="content" style="margin-top: -360px" >
			<table id="example" class="display" cellspacing="0" width="100%">
            	<thead>
                	<tr>
						<th> </th>                	
                    	<th>Horario</th>
                        <th>Id</th>
                        <th>Turma-Disciplina</th>
                        <th>Sala</th>
                        
                    </tr>
                </thead>
                <tbody>
                	
                	<!------>
                	<g:each in='${horario?}'>
                	<g:set var="sala" value="${it.salaId}" />
                    	<tr class='linha_registro'>
						<td>

							<div style="margin-left: -35px" class="opcoes">
								<ul style="display: inline">
									<li class="btn btn-info btn-xs"><a style="color: #fff"
										href="/Metafora/professor/editarProfessor/${it.id}"><span
											class="glyphicon glyphicon-pencil"></span></a></li>
									<li onclick="deletar(${it.id})"
										class="btn btn-danger btn-xs"><span
>>>>>>> criacao de horarios
										class="glyphicon glyphicon-remove"></span></li>
								</ul>

							</div>
						</td>
<<<<<<< HEAD

						<td>
							${it.id}
						</td>
							<td>
							${it.horario}
						</td>
							<td>
							${sala.escola.pessoaJuridica.pessoa.nome} - ${sala.sala}
						</td>
						<td>
							${turmaDisciplina.identificacao}
						</td>
							<td>
							${turmaDisciplina.turma.turma}
						</td>
							<td>
							${turmaDisciplina.disciplinaLecionadaPorProfessor.disciplina.disciplina}
						</td>
						
					</tr>
				</g:each>


			</tbody>
		</table>
		<script type="text/javascript">
=======
		     			<td>
							${it.horario}
						</td>
						<td>
							${it.id}
						</td>
						<td>
							${it.turmaDisciplinaId}
						</td>
						<td>
							${it.sala.sala}
						</td>
					</tr>
				</g:each>
                	<!------>
                	
            	</tbody>
       		</table> 	
			<script type="text/javascript">
>>>>>>> criacao de horarios
			$('#example')
				.removeClass( 'display' )
				.addClass('table table-striped table-bordered table-hover');
			</script>
		<!-- Button trigger modal -->
		<button class="btn btn-primary" data-toggle="modal"
			data-target="#myModal">Cadastrar</button>
		<button class="btn btn-primary" data-toggle="moda2"
			data-target="#myModal">Ler</button>
		<button class="btn btn-primary" data-toggle="moda3"
			data-target="#myModal">Editar</button>
		<button class="btn btn-primary" data-toggle="moda4"
			data-target="#myModal">Apagar</button>
		
		
		Modal 
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
									<label for="exampleInputNome1">Descrição de horário</label> <input
										type="text" class="form-control" id="exampleInputNome1"
										placeholder="Ex: 5M46">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-5">
									<label for="exampleInputSala">Nome da sala</label> <input
										type="text" class="form-control" id="exampleInpuText"
										placeholder="Ex: sala de video">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-5">
									<label for="exampleInputTurma-Disc">Turma disciplina</label> <input
										type="text" class="form-control" id="exampleInpuText"
										placeholder="Ex: VICENTE6A-ASART">
								</div>

							</div>
							<br />
						
							<br />
							<div class="row">
								<div class="col-xs-5">
									<label for="exampleInputTurma-Disc">Nome Turma</label> <input
										type="text" class="form-control" id="exampleInpuText"
										placeholder="Ex: A-Vicente">
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-xs-4">
									<label for="exampleInputDisciplina1">Disciplina</label> <select
										id="exampleInputDisciplina1" class="form-control">
										
										<g:each in='${it.sala.list()}'>
										
											<option value="${it.id}">${it.sala}</option>
										</g:each>
										
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-4">
									<g:select name="sala" from="${}"/>
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