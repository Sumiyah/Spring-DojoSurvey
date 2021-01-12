<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container text-center mt-3">
		
		
		<div class = "row justify-content-center">
		<div class = "col">
		<h3>Enter Your Information</h3>
		<form action="/process" method="POST" class="p-5 border border-dark bg-light" >
			<div class="form-group row justify-content-between">
				<label>Name: </label> 
				<div class="col-sm-10">
				<input type="text" class="form-control" name="name">
			</div>
			</div>

			<div class="form-group row justify-content-between">
				<label>Dojo Location: </label> 
				<div class="col-sm-10">
				<select class="form-control" name="dojo">
					<option selected disabled hidden="" >Choose...</option>	
					<option value="online">Saudi-Online</option>
					<option value="burbank">Burbank</option>
					<option value ="seattle">Seattle</option>
					<option value="other">Other</option>
				</select>
			</div>
			</div>

			<div class="form-group row justify-content-between">
				<label>Favorite Language: </label> 
				<div class="col-sm-10 ">
				<select class="form-control" name ="language" >
					<option selected disabled hidden="" >Choose...</option>
					<option value="java">Java</option>
					<option value="python">Python</option>
					<option value="javascript">JavaScript</option>
					<option value="other">Other</option>
				</select>
			</div> </div>

			<div class="form-group row">
				<label>Comment (Optional):</label>
				
				<textarea name="comment" class="form-control" rows="3"></textarea>
			</div>
			
			<button type="submit" class="btn btn-dark text-end">Submit</button>
		</form>
		</div>
		</div>
	</div>
</body>
</html>