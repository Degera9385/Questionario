<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
			.control:checked ~ .conditional,
			#simOutraTecnologia:checked ~ .conditional,
			#simInteresseTrabalhar:checked ~ .conditional,
			#simFilho:checked ~ .conditional,
			#simInteresseConhecer:checked ~ .conditional,
			#idiomas:checked ~ .conditional,
			#lingua:checked ~ .conditional,
			#tecnologia:checked ~ .conditional,
			#comportamental:checked ~ .conditional,
			#offtopic:checked ~ .conditional,
			#sim5:checked ~ .conditional,
			#lingua2:checked ~ .conditional,
			#tecnologia2:checked ~ .conditional,
			#comportamental2:checked ~ .conditional,
			#offtopic2:checked ~ .conditional{
				clip: auto;
				height: auto;
				margin: 0;
				overflow: visible;
				position: static;
				width: auto;
			}

			.control:not(:checked) ~ .conditional,
			#simOutraTecnologia:not(:checked) ~ .conditional,
			#simInteresseTrabalhar:not(:checked) ~ .conditional,
			#simFilho:not(:checked) ~ .conditional,
			#simInteresseConhecer:not(:checked) ~ .conditional,
			#idiomas:not(:checked) ~ .conditional,
			#lingua:not(:checked) ~ .conditional,
			#tecnologia:not(:checked) ~ .conditional,
			#comportamental:not(:checked) ~ .conditional,
			#offtopic:not(:checked) ~ .conditional,
			#sim5:not(:checked) ~ .conditional,
			#lingua2:not(:checked) ~ .conditional,
			#tecnologia2:not(:checked) ~ .conditional,
			#comportamental2:not(:checked) ~ .conditional,
			#offtopic2:not(:checked) ~ .conditional{
				border: 0;
				clip: rect(0 0 0 0);
				height: 0px;
				margin: -1px;
				overflow: hidden;
				padding: 0;
				position: absolute;
				width: 0px;
			}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<spring:url value="/questionario/salva" var="salva"></spring:url>
<spring:url value="/" var="index"></spring:url>
</head>
<body style="background-color: #222222">
<div class="row">
<div class="col-sm-1" style=" background-color: #7c44dd"></div>
<div class="col-sm-10 text-center"><h1 style="color: white" class="text-center" >Questionario</h1></div>
<div class="col-sm-1" style=" background-color:#fd2e38"></div>
<br>
<br>
</div>
<form:form action="${salva}" modelAttribute="questionario">
	<form:hidden path="id" />
	<div class="row" >
	<div class="col-sm-1" style=" background-color: #7c44dd"></div>
	<div class="col-sm-5 text-center">
		<label style="color: white">Qual o seu tipo de trabalho?</label><br>
		<form:radiobutton path="tipoTrabalho" value="tecnico" /><label style="color: white" >Técnico</label>
		<form:radiobutton path="tipoTrabalho" value="gestao" /><label style="color: white" >Gestão</label>
		<form:radiobutton path="tipoTrabalho" value="outro" /><label style="color: white" >Outro</label>
	</div>
	
	<div class="col-sm-5 text-center">
		<label style="color: white">Quais atividades você executa?</label><br>
		<form:textarea path="atividadesExecuta" placeholder="Correção de erros" rows="3" cols="40"/>
	</div>
	<div class="col-sm-1" style=" background-color:#fd2e38"></div>
	</div>
	<div class="row" >
	<div class="col-sm-1" style=" background-color: #7c44dd"></div>
	<div class="col-sm-5 text-center">
	<label style="color: white">Você conhece outras tecnologias</label> <br>
	<form:radiobutton path="conhecimentoOutraTecnologia" value="nao" class="control"/><label style="color: white">Não</label>
	<br>
	<form:radiobutton path="conhecimentoOutraTecnologia" value="sim" id="simOutraTecnologia" class="control" /><label for="sim" style="color: white">Sim</label>
	<br> 
	<label for="quais"class="conditional" style="color: white">Quais?</label> 
	<br>
	<form:textarea path="conhecimentoOutraTecnologia" class="conditional" placeholder="AutoCAD" rows="3" cols="40"/>
	</div>
	<div class="col-sm-5 text-center">
		<label style="color: white">Qual sua formação academica?</label><br>
		<form:select path="formacaoAcademica">
			<form:option value="ensino medio" label="Ensino Médio"></form:option>
			<form:option value="ensino superio" label="Ensino Superior"></form:option>
			<form:option value="pos graduacao" label="Pós Graduação"></form:option>
			<form:option value="MBA" label="MBA"></form:option>
			<form:option value="mestrado" label="Mestrado"></form:option>
			<form:option value="doutorado" label="Doutorado"></form:option>
			<form:option value="PHD" label="PHD"></form:option>
		</form:select>
	</div>
	<div class="col-sm-1" style=" background-color:#fd2e38"></div>
	</div>
	<div class="row" >
	<div class="col-sm-1" style=" background-color: #7c44dd"></div>
	<div class="col-sm-5 text-center">
		<label style="color: white" >Quais são suas certificações?</label><br>
		<form:textarea path="certificacao" placeholder="Curso de Java basico Alura-20 horas" rows="3" cols="40"/>
	</div>
	<div class="col-sm-5 text-center">
		<label style="color: white" >Quanto tempo de experiência você possui na área de função atual?</label><br>
		<form:select path="tempoExperiencia">
			<form:option value="1-2 anos" label="Entre 1 e 2 anos"></form:option>
			<form:option value="3-4 anos" label="Entre 3 e 4 anos"></form:option>
			<form:option value="mais de 5 anos" label="Mais de 5 anos"></form:option>
		</form:select>
	</div>
	<div class="col-sm-1" style=" background-color: #fd2e38"></div>
	</div>
	<div class="row" >
	<div class="col-sm-1" style=" background-color: #7c44dd"></div>
	<div class="col-sm-5 text-center">
		<label style="color: white" >Quais idiomas você conhece?</label><br>
		<form:checkbox path="idioma" value="nao conhece"/><label style="color: white" >Não Conheço </label>  
		<form:checkbox path="idioma" value="ingles"/><label style="color: white" >Inglês </label>  
		<form:checkbox path="idioma" value="espanhol"/><label style="color: white" >Espanhol</label><br>
		<form:checkbox path="idioma" value="fraces"/><label style="color: white" >Fracês</label>  
		<form:checkbox path="idioma" value="italiano"/><label style="color: white" >Italiano</label>  
		<form:checkbox path="idioma" value="alemao"/><label style="color: white" >Alemão</label><br>
		<form:checkbox path="idioma" value="outros" id="idiomas" class="control"/><label style="color: white" >Outros</label><br>
		<label class="conditional" style="color: white" >Quais?</label><br>
		<form:textarea path="idioma" class="conditional" placeholder="Chines" rows="3" cols="40"/>
	</div>
	<div class="col-sm-5 text-center">
		<label style="color: white" >Você possui alguma restrição de local de atuação?</label><br>
		<form:textarea path="restriçãoLocalTrabalho" placeholder="Santo Amaro" rows="3" cols="40"/>
	</div>
	<div class="col-sm-1" style=" background-color: #fd2e38"></div>
	</div>
	<div class="row" >
	<div class="col-sm-1" style=" background-color: #7c44dd"></div>
	<div class="col-sm-5 text-center">
		<label style="color: white" >Você tem interesse em atuar em outra área?</label> <br>
		<form:radiobutton path="areaInteresseTrabalhar" value="nao" class="control" /><label style="color: white" >Não</label> 
		<br>
		<form:radiobutton path="areaInteresseTrabalhar" value="sim" id="simInteresseTrabalhar" class="control" /><label for="sim2" style="color: white" >Sim</label>
		<br> 
		<label for="quais" class="conditional" style="color: white" >Quais?</label> <br>
		<form:textarea path="areaInteresseTrabalhar" class="conditional" placeholder="área de segurança" rows="3" cols="40"/>
	</div>
	<div class="col-sm-5 text-center">
		<label style="color: white" >Você possui filhos?</label> <br>
		<form:radiobutton path="filho" value="nao" class="control"/><label style="color: white" >Não</label>
		<br>
		<form:radiobutton path="filho" value="sim" id="simFilho" class="control"/><label for="sim3" style="color: white" >Sim</label>
		<br> 
		<label for="quantos" class="conditional" style="color: white" >Quantos?</label> <br>
		<form:textarea path="quantidadeFilho" class="conditional" rows="1" cols="10" /><br>
		<label for="idade" class="conditional" style="color: white" >Quantos anos tem?</label> <br>
		<form:textarea path="idadeFilho" class="conditional" placeholder="12 anos e 14 anos" rows="3" cols="40" />
	</div>
	<div class="col-sm-1" style=" background-color: #fd2e38"></div> 
	</div>
	<div class="row" >
	<div class="col-sm-1" style=" background-color: #7c44dd"></div>
	<div class="col-sm-5 text-center">
		<label style="color: white" >Quais benefícios você gostaria de possuir?</label><br>
		<form:textarea path="beneficiosDesejados" placeholder="Vale Alimentação" rows="3" cols="40"/>
	</div>
	<br>
	<div class="col-sm-5 text-center">
	<label style="color: white" >Você tem interesse em conhecer outros temas?</label>
	<br>
	<form:radiobutton path="temasInteresseConhecer" value="nao" class="control"/><label style="color: white" >Não</label>
	<br>
	<form:radiobutton path="temasInteresseConhecer" value="sim" id="simInteresseConhecer" class="control"/><label for="sim4" style="color: white" >Sim</label>
	<br>
	<label class="conditional" style="color: white" >Quais?</label><br>
	<div class="conditional">
	<div>
	<form:checkbox path="interesseConhecerIdiomas" value="linguas" class="control" id="lingua"/><label style="color: white" >Línguas</label><br>
	<form:textarea path="interesseConhecerIdiomas" class="conditional" placeholder="Alemão" rows="3" cols="40"/>
	</div>
	<div>
	<form:checkbox path="interesseConhecerTecnologias" value="tecnologias" class="control" id="tecnologia"/><label style="color: white" >Tecnologias</label><br>
    <form:textarea path="interesseConhecerTecnologias" class="conditional" placeholder="Java Script" rows="3" cols="40"/>
    </div>
    <div>
	<form:checkbox path="interesseConhecerComportamental" value="comportamentais" class="control" id="comportamental"/><label style="color: white" >Comportamentais</label><br>
	<form:textarea path="interesseConhecerComportamental" class="conditional" placeholder="Gestão de Tempo" rows="3" cols="40"/>
	</div>
    <div>
	<form:checkbox path="interesseConhecerOfftopic" value="off-topic" class="control" id="offtopic"/><label style="color: white" >Off-Topic</label><br>
	<form:textarea path="interesseConhecerOfftopic" class="conditional" placeholder="Gastronomia" rows="3" cols="40"/>
	</div> 
	</div>
	</div>
	<div class="col-sm-1" style=" background-color: #fd2e38"></div> 
	</div>
	<div class="row" >
	<div class="col-sm-1" style=" background-color: #7c44dd"></div>
	<div class="col-sm-5 text-center">
	<label style="color: white" >Você tem interesse em ensinar outros temas?</label>
	<br>
	<form:radiobutton path="temasInteresseEnsinar" value="nao" class="control"/><label style="color: white" >Não</label>
	<br>
	<form:radiobutton path="temasInteresseEnsinar" value="sim" id="sim5" class="control"/><label for="sim5" style="color: white" >Sim</label>
	<br>
	<label class="conditional" style="color: white" >Quais?</label><br>
	<div class="conditional">
	<div>
	<form:checkbox path="interesseEnsinarIdiomas" value="linguas" class="control" id="lingua2"/><label style="color: white" >Línguas</label><br>
	<form:textarea path="interesseEnsinarIdiomas" class="conditional" placeholder="Alemão" rows="3" cols="40"/>
	</div>
	<div>
	<form:checkbox path="interesseEnsinarTecnologias" value="tecnologias" class="control" id="tecnologia2"/><label style="color: white" >Tecnologias</label><br>
    <form:textarea path="interesseEnsinarTecnologias" class="conditional" placeholder="Java Script" rows="3" cols="40"/>
    </div>
    <div>
	<form:checkbox path="interesseEnsinarComportamental" value="comportamentais" class="control" id="comportamental2"/><label style="color: white" >Comportamentais</label><br>
	<form:textarea path="interesseEnsinarComportamental" class="conditional" placeholder="Gestão de Tempo" rows="3" cols="40"/>
	</div>
    <div>
	<form:checkbox path="interesseEnsinarOfftopic" value="off-topic" class="control" id="offtopic2"/><label style="color: white" >Off-Topic</label><br>
	<form:textarea path="interesseEnsinarOfftopic" class="conditional" placeholder="Gastronomia" rows="3" cols="40"/>
	</div> 
	</div>
	</div>
	<div class="col-sm-5 text-center">
	<input type="submit" value="Cadastrar" class="btn btn-success" /> 
	</div> 
	<div class="col-sm-1" style=" background-color: #fd2e38"></div> 
	</div>

</form:form>
</body>
</html>