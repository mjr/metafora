<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width,initial-scale=1"/>
		<link rel="shortcut icon" href="images/favicon-setic.png">

        <title>Sessão . Sistema Acadêmico</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
	    <link href="css/dataTables.bootstrap.css" rel="stylesheet"/>
        
        <script src="js/jquery.js"></script>
		<script src="js/jquery.min.js"></script>
    	<script src="js/jquery.dataTables.min.js"></script>
    	<script src="js/dataTables.bootstrap.js"></script>        
        <script src="js/dataScript.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style>
        	div#aside {
        		width: 10%;
        		heigth: 100%;
        	}
        	div#section {
        		width: 90%;
        		heigth: 100%;
        		margin-top: -6.4%;
        		margin-left: 10%;
        	}
        </style>      
        
        <nav class="navbar navbar-default" role="navigation">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">Sistema Acadêmico</a>
		    </div>

		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Módulos <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">Pessoal</a></li>
		            <li><a href="#">Acadêmico</a></li>
		          </ul>
		        </li>
		      </ul>
		      <form class="navbar-form navbar-left" role="search">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="Pesquisar">
		        </div>
		        <button type="submit" class="btn btn-default">Buscar</button>
		      </form>
		      <ul class="nav navbar-nav navbar-right">
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Setic <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="#">Configurações</a></li>
		            <li><a href="#">Sair</a></li>
		          </ul>
		        </li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>    
	</head>
	<body>
		<!-- MENU LATERAL -->
		<div id="aside">
			<ul class="nav nav-pills nav-stacked">
			  <li class="active"><a href="#">Professor</a></li>
			  <li><a href="#">Aluno</a></li>
			  <li><a href="#">Escola</a></li>
			</ul>	
		</div>
		<!-- CORPO DA PÁGINA -->
		<div id="section" class="container">
			<table id="example" class="display" cellspacing="0" width="100%">
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
                	<tr>
                    	<td>Tadeu Ferreira</td>
                        <td>11025</td>
                        <td>2010</td>
                        <td>Redes de Computadores</td>
                        <td>Sim</td>
                    </tr>
                    <tr>
                    	<td>Felipe Arrais</td>
                        <td>11452</td>
                        <td>2011</td>
                        <td>Matemática</td>
                        <td>Sim</td>
                    </tr>
                    <tr>
                  		<td>Romero Tertulino</td>
                        <td>11546</td>
                        <td>2006</td>
                        <td>Geografia</td>
                        <td>Sim</td>
                    </tr>
                    <tr>
                    	<td>Edson Jose</td>
                        <td>11789</td>
                        <td>2013</td>
                        <td>Física</td>
                        <td>Sim</td>
                   	</tr>
                   	<tr>
                      	<td>Marcelo Damasceno</td>
                       	<td>11648</td>
                        <td>2007</td>
                       	<td>Algoritmos</td>
                      	<td>Não</td>
                    </tr>
                    <tr>
                      	<td>Fabio Duarte</td>
                        <td>11846</td>
                        <td>2008</td>
                        <td>Biologia</td>
                        <td>Sim</td>
                    </tr>
                   	<tr>
                       	<td>Gilbran Andrade</td>
                        <td>11279</td>
                        <td>2012</td>
                        <td>Programação/POO</td>
                        <td>Sim</td>
                   	</tr>
                   	<tr>
                       	<td>Alex Wagner</td>
                       	<td>11457</td>
                       	<td>2009</td>
                       	<td>Matemática</td>
                        <td>Sim</td>
                    </tr>
                    <tr>
                      	<td>Elialdo Chibério</td>
                        <td>11962</td>
                        <td>2009</td>
                        <td>Eletrônica</td>
                        <td>Sim</td>
                    </tr>
                    <tr>
                      	<td>Ana Cristina</td>
                        <td>11961</td>
                        <td>2010</td>
                        <td>Educação Física</td>
                        <td>Sim</td>
                    </tr>
                    <tr>
                        <td>Gustavo Guanabara</td>
                        <td>11987</td>
                        <td>2014</td>
                        <td>Autoria Web</td>
                        <td>Não</td>
                    </tr>
                    <tr>
                       	<td>Gilberto Nascimento</td>
                        <td>11545</td>
                        <td>2008</td>
                        <td>Matemática</td>
                        <td>Sim</td>
                    </tr>
            	</tbody>
       		</table> 	
			<script type="text/javascript">
			$('#example')
				.removeClass( 'display' )
				.addClass('table table-striped table-bordered table-hover');
			</script>
			<!-- Button trigger modal -->
			<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			  Cadastrar
			</button>
			<button class="btn btn-primary btn-lg" data-toggle="moda2" data-target="#myModal">
			  Ler
			</button>
			<button class="btn btn-primary btn-lg" data-toggle="moda3" data-target="#myModal">
			  Editar
			</button>
			<button class="btn btn-primary btn-lg" data-toggle="moda4" data-target="#myModal">
			  Apagar
			</button>
			
			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
			        <h4 class="modal-title" id="myModalLabel">Cadastro</h4>
			      </div>
			      <div class="modal-body">
			        <form role="form">
		                <div class="row">
		                    <div class="col-xs-7">
		                        <label for="exampleInputNome1">Nome</label>
		                        <input type="text" class="form-control" id="exampleInputNome1" placeholder="Nome Completo">
		                    </div>
		                </div>
		                <br/>
		                <div class="row">
		                    <div class="col-xs-3">
		                        <label for="exampleInputRG1">RG</label>
		                        <input type="number" class="form-control" id="exampleInputRG1" min="000000001" max="999999999" size="12" maxlength="9" placeholder="RG">
		                    </div>
		                </div>
		                <br/>
		                <div class="row">
		                    <div class="col-xs-3">
		                        <label for="exampleInputCPF1">CPF</label>
		                        <input type="number" class="form-control" id="exampleInputCPF1" min="00100000000" max="99999999999" maxlength="11" placeholder="CPF">
		                    </div>
		                </div>
		                <br/>
		                <div class="form-group">
		                    <label for="exampleInputSexo1" id="exampleInputSexo1">Sexo</label><br/>
		                    <label class="radio-inline">
		                        <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> Masculino
		                    </label>
		                    <label class="radio-inline">
		                        <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Feminino
		                    </label>
		                </div>
		                <br/>
		                <div class="row">
		                    <div class="col-xs-3">
		                        <label for="exampleInputMatricula1">Matricula</label>
		                        <input type="number" class="form-control" id="exampleInputMatricula1" min="20141" max="2014200" placeholder="Matricula">
		                    </div>
		                </div>
		                <br/>
		                <div class="row">
		                    <div class="col-xs-6">
		                        <label for="exampleInputEmail1">Email</label>
		                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
		                    </div>
		                </div>
		                <br/>
		                <div class="row">
		                    <div class="col-xs-3">
		                        <label for="exampleInputTel1">Telefone</label>
		                        <input type="tel" class="form-control" id="exampleInputTel1" placeholder="Telefone">
		                    </div>
		                </div>
		                <br/>
		                <div class="row">
		                    <div class="col-xs-4">
		                        <label for="exampleInputDisciplina1">Disciplina</label>
		                        <select id="exampleInputDisciplina1" class="form-control">
		                            <option>Português</option>
		                            <option>Matemática</option>
		                            <option>Física</option>
		                            <option>Geografia</option>
		                            <option>Música</option>
		                        </select>
		                    </div>
		                </div>
		                <br/>
		                <br/>
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
	<footer style="position: relative;margin-top:16.2%;">
		<div class="panel-footer">
			<p style="text-align: right;">© 2014 Metafora. Todos os direitos reservados. Design & Desenvolvimento por SETIC</p>
		</div>
	</footer>        
</html>