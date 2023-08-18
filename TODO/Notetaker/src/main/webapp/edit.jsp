<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entity.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Notetaker note = (Notetaker) s.get(Notetaker.class, noteId);
	%>

	<form action="UpdateServlet" method="post"
		class="container-fluid p-3 m-0">
		
		<input value="<%= note.getId() %>" name="noteId" type="hidden" />

		<div class="mb-3">
			<label for="title" class="form-label">Title </label> <input
				type="text" class="form-control" id="title" name="title" value="<%= note.getTitle() %>" required>
		</div>

		<div class="mb-3">
			<label for="context" class="form-label">Note</label>
			<textarea id="context"  
				class="form-control" style="height: 200px" name="content" required><%= note.getContent() %></textarea>
		</div>

		<!--  
		
		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me
				out</label>
		</div>
		-->

		<div class="container text-center">
			<button type="submit" class="btn btn-success">Save</button>
		</div>

	</form>





	<h1>this is edit page...</h1>
</body>
</html>