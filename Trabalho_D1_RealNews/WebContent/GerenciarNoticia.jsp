<%@page import="model.Noticia"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RealNews | Gerenciar Noticias</title>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/96a514acf1.js" crossorigin="anonymous"></script>
<link type="text/css" rel="stylesheet" href="css/estilo.css" />
	</head>
	<body>
		<%ArrayList<Noticia> listaNoticias = (ArrayList<Noticia>) request.getAttribute("listaNoticias"); %>

		
			 <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
       
            
            <a class="navbar-brand" href="Principal.html">RealNews</a>
            
                
            <a class="navbar-brand" style='color: #000' 'width: 120px' href="ConsultarNoticias.do"> Consultar Noticias </a>
        
			<a class="navbar-brand" style='color: #000' href="cadastrar.html">Cadastrar Noticia</a>
				
			<br>
			<br>
			</div>

           
        </nav>
        
        <br>
    </header>
		<br>
		<br>
		<section>
			<h2>Lista de Notícias Cadastradas</h2>
			
			<br>
			<br>
			
			
		
			
			
			<table class="table table-striped" style='color: #E6E6E6'>
				<tr>
					<th>ID</th>
					<th>Título</th>
					<th>Descrição</th>
					<th></th>
					<th></th>
				</tr>
				
				<jstl:forEach var="noticia" items="${listaNoticias}">
					<tr>
						<td style="width: 10%">${noticia.id}</td>
						<td style="width: 70%">${noticia.titulo}</td>
						<td style="width: 70px">${noticia.descricao}</td>
						<td style="width: 10%">
							<a class="btn btnAlterar" style='color: #E6E6E6' href="AlterarNoticia.do?id=${noticia.id}" title="Alterar">
								<span class="fas fa-pen"></span>
							</a>
						</td>
						<td style="width: 10%">
							<a class="btn btnExcluir" style='color: #E6E6E6' href="ExcluirNoticia.do?id=${noticia.id}" title="Excluir">
								<span class="fas fa-times"></span>
							</a>
						</td>
					</tr>		
				</jstl:forEach>
				
			</table>
		</section>
		
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>