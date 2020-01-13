<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Teste 1</title>
<spring:url value="questionario/" var="questionario"></spring:url>
</head>
<body style=" background-image: url('resource/galaxy.jpg');background-repeat: no-repeat;background-attachment: fixed;background-size: cover; ">
	<div>
	<h1 style="color: white; top: 0"  class="text-center" >Projeto Realocação </h1>
		<img alt="qintess" src="resource/qintess.PNG" style=" left: 0">
	</div>
	
	<div style="color: white; top: 0; text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px #fd2e38"  class="text-center">
	<h3>"Todo começo tem um fim,</h3>
	<h3>todo fim, um novo começo.</h3>
	<h3>O que difere as pessoas fracas das fortes?</h3>
	<h3>A maneira, que lidamos com o fim.</h3>
	<h3>Os fracos, abaixam a cabeça e deixam o</h3>
	<h3>tempo passar.</h3>
	<h3>Os fortes, vivem cada dia, um novo dia.</h3>
	<h3>Por isso, choro.</h3>
	<h3>Mas, jamais deixo de viver." </h3>
	</div>
	<h4 style="color: white; top: 0 ; text-align: right; text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px #fd2e38" >Thais Vicentini</h4>

	<div>
		<a href="${questionario}" role="button"
			style= "background-color:Transparent;color:white;border: 2px solid #4B0082;
			font-size: 26px;text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px #fd2e38;
			box-shadow:1px 1px 2px black, 0 0 25px blue, 0 0 5px #fd2e38;
			position: relative; bottom: -40px; left: 300px;padding:14px 40px">Questionario</a>
	</div>
	<div>
		<a href="${questionario}" role="button"
			style= "background-color:Transparent;color:white;border: 2px solid #4B0082;
			font-size: 26px;text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px #fd2e38;
			box-shadow:1px 1px 2px black, 0 0 25px blue, 0 0 5px #fd2e38;
			position: relative; bottom: 0px; left: 800px; padding:14px 40px">Análise</a>
	</div>
	
	
</body>
</html>