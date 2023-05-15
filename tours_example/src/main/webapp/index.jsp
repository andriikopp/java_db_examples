<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Tours</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<span class="navbar-brand mb-0 h1">Tours</span>
	</nav>

	<jsp:include page="/TourServlet" />

	<div class="container mt-4 mb-4">
		<c:forEach var="item" items="${tours}">
			<div class="card mb-4">
				<img src="${item.imageURL}" class="card-img-top" alt="${item.id}">
				<div class="card-body">
					<h5 class="card-title">${item.title}</h5>
					<p class="card-text"><small>${item.type}</small></p>
					<p class="card-text">${item.description}</p>
					<p class="card-text">${item.hotel}</p>
					<p class="card-text">${item.city}, ${item.country}</p>
					<p class="card-text"><b>&dollar;${item.price}</b></p>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="jumbotron jumbotron-fluid mb-0">
		<div class="container">
			<h1 class="display-4">Tours</h1>
			<p class="lead">
				Contact us: <a href="mailto:tours@mail.com">tours@mail.com</a>
			</p>
		</div>
	</div>
</body>
</html>
