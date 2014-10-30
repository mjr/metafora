<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Editar Funcionário . Módulo Pessoal</title>
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
			<li ><g:link controller="Professor"
					action="listar">Professor</g:link></li>
			<li><g:link controller="Aluno" action="listar">Aluno</g:link></li>
			<li class="active"><g:link controller="Funcionario" action="listar">Funcionário</g:link></li>
			<li><g:link controller="Escola" action="listar">Escola</g:link></li>
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
		<h4 style="margin-bottom: 5px;">Editar Funcionário</h4>

		<g:each in='${funcionarios?}'>
			<g:set var="pessoa"
				value="${it.cidadao.pessoaFisica.pessoa}" />
			<g:set var="pessoaFisica"
				value="${it.cidadao.pessoaFisica}" />
			<g:set var="cidadao" value="${it.cidadao}" />
		</g:each>
		<div style="margin-left: 120px">
			<g:form controller="Funcionario" action="atualizar"
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
							de Nascimento</label>
						<div class="col-sm-10">
							<g:formatDate format="yyyy-MM-dd" date="${date}" />
							<g:datePicker noSelection="['':'']" precision="day"
								class="form-control" required="true" name="dataDeNascimento"
								value="${pessoa.dataDeNascimento}" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputCpfCnpj3" class="col-sm-2 control-label">CPF</label>
						<div class="col-sm-10">
							<g:textField class="form-control"  id="cpf"
								name="cpfCnpj" style="width: 300px" value="${pessoa.cpfCnpj }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputrcNumero3" class="col-sm-2 control-label">Número
							do Registro de Cartório</label>
						<div class="col-sm-10">
							<g:textField class="form-control" name="rcNumero"
								style="width: 300px" value="${pessoaFisica.rcNumero }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputrcNomeDoCartorio3" class="col-sm-2 control-label">Nome
							do Cartório do Registro de Cartório</label>
						<div class="col-sm-10">
							<g:textField class="form-control" name="rcNomeDoCartorio"
								style="width: 300px" value="${pessoaFisica.rcNomeDoCartorio }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputrcNomeDoLivro3" class="col-sm-2 control-label">Nome
							do Livro do Registro de Cartório</label>
						<div class="col-sm-10">
							<g:textField class="form-control" name="rcNomeDoLivro"
								style="width: 300px" value="${pessoaFisica.rcNomeDoLivro }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputrcFolhaDoLivro3" class="col-sm-2 control-label">Folha
							do Livro do Registro de Cartório</label>
						<div class="col-sm-10">
							<g:textField class="form-control" name="rcFolhaDoLivro"
								style="width: 300px" value="${pessoaFisica.rcFolhaDoLivro }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputsexo3" class="col-sm-2 control-label">Sexo</label>
						<div class="col-sm-10">
							<g:if test="${pessoaFisica.sexo == 'MASCULINO' }">
								<label class="radio-inline"> <input type="radio"
									name="sexo" id="inlineRadio1" value="MASCULINO"
									checked="checked">MASCULINO
								</label>
								<label class="radio-inline"> <input type="radio"
									name="sexo" id="inlineRadio2" value="FEMININO">FEMININO
								</label>
							</g:if>
							<g:else>
								<label class="radio-inline"> <input type="radio"
									name="sexo" id="inlineRadio1" value="MASCULINO">MASCULINO
								</label>
								<label class="radio-inline"> <input type="radio"
									name="sexo" id="inlineRadio2" value="FEMININO"
									checked="checked">FEMININO
								</label>
							</g:else>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputnacionalidade3" class="col-sm-2 control-label">Nacionalidade</label>
						<div class="col-sm-10">
							<g:textField class="form-control" required="true"
								name="nacionalidade" style="width: 300px"
								value="${cidadao.nacionalidade}" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputestadoCivil3" class="col-sm-2 control-label">Estado
							Civil</label>
						<div class="col-sm-10">
							<g:if test="${cidadao.estadoCivil == 'SOLTEIRO(A)' }">
								<select class="form-control" name="estadoCivil"
									style="width: 300px">
									<option value="">
										${cidadao.estadoCivil}
									</option>
									<option value="CASADO(A)">CASADO(A)</option>
									<option value="DIVORCIADO(A)">DIVORCIADO(A)</option>
									<option value="VIÚVO(A)">VIÚVO(A)</option>
								</select>
							</g:if>
								<g:elseif test="${cidadao.estadoCivil == '' }">
								<select class="form-control" name="estadoCivil"
									style="width: 300px">
									<option value="">
										${cidadao.estadoCivil}
									</option>
									<option value="SOLTEIRO(A)">SOLTEIRO(A)</option>
									<option value="CASADO(A)">CASADO(A)</option>
									<option value="DIVORCIADO(A)">DIVORCIADO(A)</option>
									<option value="VIÚVO(A)">VIÚVO(A)</option>
								</select>

							</g:elseif>
							<g:elseif test="${cidadao.estadoCivil == 'CASADO(A)' }">
								<select class="form-control" name="estadoCivil"
									style="width: 300px">
									<option value="">
										${cidadao.estadoCivil}
									</option>
									<option value="SOLTEIRO(A)">SOLTEIRO(A)</option>
									<option value="DIVORCIADO(A)">DIVORCIADO(A)</option>
									<option value="VIÚVO(A)">VIÚVO(A)</option>
								</select>

							</g:elseif>

							<g:elseif test="${cidadao.estadoCivil == 'DIVORCIADO(A)' }">
								<select class="form-control" name="estadoCivil"
									style="width: 300px">
									<option value="">
										${cidadao.estadoCivil}
									</option>
									<option value="SOLTEIRO(A)">SOLTEIRO(A)</option>
									<option value="CASADO(A)">CASADO(A)</option>
									<option value="VIÚVO(A)">VIÚVO(A)</option>
								</select>

							</g:elseif>

							<g:else>
								<select class="form-control" name="estadoCivil"
									style="width: 300px">
									<option value="">
										${cidadao.estadoCivil}
									</option>
									<option value="SOLTEIRO(A)">SOLTEIRO(A)</option>
									<option value="CASADO(A)">CASADO(A)</option>
									<option value="DIVORCIADO(A)">DIVORCIADO(A)</option>
								</select>

							</g:else>

						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputprofissao3" class="col-sm-2 control-label">Profissão</label>
						<div class="col-sm-10">
							<g:textField class="form-control" required="true"
								name="profissao" style="width: 300px"
								value="${cidadao.profissao }" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputcargaHoraria3" class="col-sm-2 control-label">Carga
							Horária</label>
						<div class="col-sm-10">
							<g:textField class="form-control" required="" name="cargaHoraria"
								style="width: 300px" value="${it.cargaHoraria}" />
						</div>
					</div>
					<br>
					<div class="form-group">
						<label for="inputmatricula3" class="col-sm-2 control-label">Matricula</label>
						<div class="col-sm-10">
							<g:textField class="form-control" required="true"
								name="matricula" style="width: 300px"
								value="${it.matricula}" />
						</div>
					</div>
					<br>
				</fieldset>
				<div style="margin-left: 220px">
					<button type="submit" class="btn btn-primary btn">Atualizar</button>
					<ul style="display: inline-block; margin-left: -30px">
						<li class="btn btn-default btn"><a
							href="/projetoMetafora/funcionario/listar/">Cancelar</a></li>
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