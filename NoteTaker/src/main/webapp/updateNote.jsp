<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.hibernate.*,com.helper.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>note update</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("note_id").trim());
Session s=FactoryProvider.getFactory().openSession();
Note note=(Note)s.get(Note.class,id);
s.close();
%>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
	</div>
	
	<div class="container mt-5">
	<form action="UpdateServlet" method="post">

		<h1>Edit Your Note:</h1>
		<input name="noteId" value="<%=note.getId()%>" type="hidden" />
		<div class="mb-3">
			<label for="title" class="form-label">Title</label> <input
				type="text" class="form-control" id="title"
				aria-describedby="emailHelp" name="title" required 
				value="<%=note.getTitle()%>">

		</div>
		<div class="mb-3">
			<label for="content" class="form-label">Content</label>
			<textarea class="form-control" style="height: 300px;" name="content"
				required placeholder="Enter your content">
				<%=note.getContent()%></textarea>
		</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-success">Update Note</button>
		</div>

	</form>
	</div>



</body>
</html>