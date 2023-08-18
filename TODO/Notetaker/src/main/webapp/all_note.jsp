
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0">

		<%@include file="Navbar.jsp"%>


	</div>

	<h1 class="text-uppercase">all notes</h1>


	<div class="row">

		<div class="col-12">

			<%
			Session s = FactoryProvider.getFactory().openSession();

			Query q = s.createQuery("from Notetaker");
			List<Notetaker> list = q.list();
			for (Notetaker note : list) {
				//out.println(note.getId() + " : " + note.getTitle() + "<br><br>");
			%>


			<div class="card m-3 text-center" >
				<img src="images/post-it.png" class="card-img-top mx-auto" style="max-width:50px">
				<div class="card-body px-5">
					<h5 class="card-title"><%=note.getTitle()%></h5>
					<p class="card-text"><%=note.getContent()%></p>
				</div>

				<div class="container m-2">
					<a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
					<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
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