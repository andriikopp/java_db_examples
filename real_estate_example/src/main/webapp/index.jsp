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
<title>Real Estate</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<span class="navbar-brand mb-0 h1">Real Estate</span>
	</nav>

	<jsp:include page="/RealEstateServlet" />

	<c:forEach var="item" items="${realEstateBeans}">
		<div class="container mt-4 mb-4">
			<div class="card">
				<img src="${item.imageURL}" class="card-img-top" alt="${item.id}">
				<div class="card-body">
					<h5 class="card-title">${item.title}</h5>
					<p class="card-text">
						<small>${item.type}</small>
					</p>
					<p class="card-text">${item.description}</p>
					<p class="card-text">${item.address}, ${item.city}, ${item.country}</p>
					<p class="card-text"><b>&dollar;${item.price}</b></p>
				</div>
			</div>
		</div>
	</c:forEach>

	<div class="jumbotron jumbotron-fluid mb-0">
		<div class="container">
			<h1 class="display-4">Real Estate</h1>
			<p class="lead">Contact us: <a href="mailto:realestate@mail.com">realestate@mail.com</a></p>
		</div>
	</div>
</body>
</html>
