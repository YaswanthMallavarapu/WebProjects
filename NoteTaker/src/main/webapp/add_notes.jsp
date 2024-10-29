<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="w-75 mx-auto"><br/>
	<form action="SaveNoteServlet" method="post">
	
	<h1>Please fill Your Note details </h1>
			<div class="mb-3">
				<label for="title" class="form-label">Title</label>
				 <input type="text" class="form-control"
					id="title" aria-describedby="emailHelp" name="title" required/>
				
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Content</label>
				<textarea class="form-control" style="height:300px;" name="content"required placeholder="Enter your content"></textarea>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
			</div>
			
		</form>
	</div>


</body>
</html>