<%@page import="model.Noticia"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RealNews | Notícias</title>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/96a514acf1.js" crossorigin="anonymous"></script>

		<link type="text/css" rel="stylesheet" href="css/estilo.css" />
	</head>
	<body>
		<%ArrayList<Noticia> listaNoticias = (ArrayList<Noticia>) request.getAttribute("listaNoticias"); %>
		
		<header>	
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			
			<a class="navbar-brand" href="Principal.html">RealNews</a>
						
			<a class="navbar-brand" href="ListarNoticias.do">Gerenciar Notícias</a>
	
	</nav>
		</header>
		
    
    <br>
		
		<h2>Notícias</h2>
		
		<a >clique para acessa-las</a>
		
		<br>
		
		
		
		<br>
		<div class="container-fluid p-3" style = 'width:300px'>
			<c:forEach var="noticia" items="${listaNoticias}">	
				<div class="card my-3" style='border-color:#ff9933'  >
				
					<div class="card-header" style='background-color: #000;border-color:#ff9933;'>${noticia.titulo}</div>
					<div class="card-body" style='background-color: #000 ' >
						<p>${noticia.descricao}</p>
						<a href="LerNoticia.do?id=${noticia.id}" class="stretched-link" title="Clique para ler"></a>
					</div>			
				</div>			
			</c:forEach>		
		</div>		
							
	
	
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>