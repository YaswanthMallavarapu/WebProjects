<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.helper.*"%>
<%@page
	import="org.hibernate.*,org.hibernate.query.*,java.util.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase text-center">All Notes:</h1>
		<br>
	</div>

	<div class="row justify-content-center">

		<div class="col-8 mx-auto">
			<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			for (Note n : list) {
			%>

			<div class="card mt-3">
				<img class="card-img-top m-5 mx-auto" style="max-width: 100px"
					;  src="css/notepad.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title px-5"><%=n.getTitle()%></h5>
					<p class="card-text px-5"><%=n.getContent()%></p>
					<p class="m-5"><b>Last Updated At : <%=n.getAddedDate()%></b></p>
					<div class="container text-center">
						<a href="DeleteServlet?note_id=<%=n.getId()%>" class="btn btn-danger">Delete</a> 
						<a href="updateNote.jsp?note_id=<%=n.getId() %>"
							class="btn btn-primary">Update</a>
					</div>


				</div>
			</div>




			<%
			}

			s.close();
			%>




		</div>

	</div>



</body>
</html>