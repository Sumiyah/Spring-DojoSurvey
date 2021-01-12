<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<div class="card border-dark">
			<div class="card-header bg-info text-light border-dark">
				<h1>Your Information:</h1>
			</div>
			<div class="card-body bg-light">
				<h4>
					<strong>Name:</strong>
					<c:out value="${ resultn}" />
				</h4>
				<h4>
					<strong>Dojo Location:</strong>
					<c:out value="${ resultd}" />
				</h4>
				<h4>
					<strong>Favorite Language: </strong>
					<c:out value="${ resultl}" />
				</h4>
				<h4>
					<strong>Comment:</strong>
				</h4>
				<h6>
					<c:out value="${ resultc}" />
				</h6>
				
				<a href="/" class="btn btn-dark">Go Back</a>
			</div>
		</div>
	</div>
</body>
</html>