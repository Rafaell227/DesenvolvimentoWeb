<%@page import="model.Comentario"%>
<%@page import="model.Noticia"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RealNews | ${noticia.titulo}</title>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/96a514acf1.js" crossorigin="anonymous"></script>
<link type="text/css" rel="stylesheet" href="css/estilo.css" />
	</head>
	<body>
		<%Noticia noticia = (Noticia) request.getAttribute("noticia"); %>
		<%ArrayList<Comentario> listaComentarios = (ArrayList<Comentario>) request.getAttribute("listaComentarios"); %>
		
		
					 <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
       
            
            <a class="navbar-brand" href="Principal.html">RealNews</a>
            
                
            <a class="navbar-brand" style='color: #000' 'width: 120px' href="ListarNoticias.do"> Gerenciar Notícas</a>
        
			<a class="navbar-brand" style='color: #000' href="ConsultarNoticias.do">ConsultarNotícas</a>
				
			<br>
			<br>
			</div> 
        </nav>
        <br>
    </header>
		
		<section>
		<br>
			<h2${noticia.titulo}>Titulo da Noticia</h2><br>
			<br>
			<p>${noticia.descricao}</p>
			<br>
			<p> Descricao da Noticia</p>
			<p>${noticia.texto}</p>
		</section>
		<br>
		<section>
		
			<h2> Comentários</h2>
			
			<c:forEach var="comentario" items="${listaComentarios}">
			
				<div class="navbar-brand">
					<div class="card-header">${comentario.nome}</div>
					<div class="card-body">
						<p>${comentario.texto}</p>
					</div>			
				</div>				
			</c:forEach>
		</section>
		
		<section>
			<form class="form" action="LerNoticia.do?id=${noticia.id}" method="post">
				<h4>Comente Aqui !</h4>
				<br>
				
				<input type="text" name="nome" placeholder="Digite seu nome" />
				<br>
				<br>
				<input type="text" name="texto" placeholder="Digite seu comentário" />
				<br>
				<br>
				<input type="submit" class="navbar-brand" value="Enviar Comentario" />
				<br>
				
				<br>
			</form>
		</section>
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>