<html>
<head>
<meta name="layout" content="public" />
</head>
<body>
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

	<div class="container-fluid">



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
					<label>CPF</label>
					<div class="controls">
						<g:textField class="form-control" required="true" name="cpfCnpj"
							value="" />
					</div>
				</div>
				<br>
				<div class="form-heading">
					<label>Matricula</label>
					<div class="controls">
						<g:textField class="form-control" required="true" name="matricula"
							value="" />
					</div>
				</div>
				<br>
				<div class="form-heading">
					<label>Sexo</label>
					<div class="controls">
						<g:textField class="form-control" required="true" name="sexo"
							value="" />
					</div>
				</div>
				<br>
				
				<div class="form-heading">
					<label>Data de Nascimento</label>
					<div class="controls">
						<g:datePicker class="form-control" required="true" name="dataDeNascimento"
							value="" />
					</div>
				</div>
				<br>

				<div class="form-actions">
					<button type="submit" class="btn btn-primary btn">Cadastrar</button>
					<input type="reset" class="btn btn" value="Limpar">
				</div>
			</fieldset>
		</g:form>
	</div>
</body>
</html>