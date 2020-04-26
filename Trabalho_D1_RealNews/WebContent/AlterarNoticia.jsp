<%@page import="model.Noticia"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Real News | Página Inicial</title>
		
<meta charset="utf-8"/>

<link rel="stylesheet" href="css/design2.css">
<link type="text/css" rel="stylesheet" href="css/estilo.css" />
<link href="https://fonts.googleapis.com/css?family=Germania+One"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="css/estilo.css" />
		
		
	</head>   
	<body>
		<%Noticia noticia = (Noticia) request.getAttribute("noticia"); %>
				
		<header>	
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			
				<a class="navbar-brand" href="Principal.html">RealNews</a>				
				<a class="navbar-brand" href="ListarNoticias.do">Gerenciar Notícias</a>
				<a class="navbar-brand" href="ConsultarNoticias.do">Consultar Notícias</a>
			
			 </nav>
		</header>
		
		
		
		<section>
		
		<br>
		<br>
			<h2>Alterar Notícia</h2>
			
			<br>
			<br>
			
			<form action="AlterarNoticia.do" method="post">
<label>ID</label><br> <input type="text" name="id" placeholder="Digite ID" style="width: 100px" required value="<%=noticia.getId()%>" readonly required />
				
				<br>
				<br>
				
				<div class="form-group">
					<label>Titulo</label><br> <input type="text" name="titulo" placeholder="Digite o Titulo" style="width: 150px" required value="<%=noticia.getTitulo()%>" />
				</div>
				
				<br>
				
				
				<div class="form-group">
				     <label> Descricao </label>
					
					<br>
         <textarea name="descricao" placeholder="Digite aqui" cols="70" rows="8"><%=noticia.getTexto() %></textarea>
				</div>
				
				<div class="form-group">
				     <label> Texto </label>
					
					<br />
         <textarea name="texto" placeholder="Digite aqui" cols="70" rows="8"><%=noticia.getTexto() %></textarea>
				</div>
						
				<div class="form-group">
					<input type="submit" class="navbar-brand" name="btnAlterar" value="Alterar Notícia" />
		
				</div>	
			</form>
		</section>
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>