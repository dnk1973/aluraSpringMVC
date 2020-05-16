<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>

<c:url value="/resources/css" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">

<style type="text/css">
    body {
        padding-top: 60px;
    } 
</style>

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Casa do Código</a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="${s:mvcUrl('PC#listar').build()}">Lista de Produtos</a></li>
                    <li class="nav-item"><a class="nav-link" href="${s:mvcUrl('PC#form').build()}">Cadastro de Produtos</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
		<h1>Lista de Produtos</h1>
	
		<div>${sucesso}</div>
		<div>${falha}</div>
	
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<th>Título</th>
				<th>Descrição</th>
				<th>Páginas</th>
			</tr>
			<c:forEach items="${produtos}" var="produto">
				<tr>
					<th><a href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build()}">${produto.titulo}</a></th>
					<th>${produto.descricao}</th>
					<th>${produto.paginas}</th>
				</tr>
			</c:forEach>
		</table>
    </div>
</body>
</html>