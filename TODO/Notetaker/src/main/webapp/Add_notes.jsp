<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid p-0 m-0">

		<%@include file="Navbar.jsp"%>

	</div>



	<br>
	<h1>please add your notes here</h1>

	<!-- this is add note .... -->
	<form action="SaveNoteServlet" method="post"
		class="container-fluid p-3 m-0">

		<div class="mb-3">
			<label for="title" class="form-label">Title </label> <input
				type="text" class="form-control" id="title" name="title" required>
		</div>

		<div class="mb-3">
			<label for="context" class="form-label">Note</label>
			<textarea id="context" placeholder="enter your note here"
				class="form-control" style="height: 200px" name="content" required></textarea>
		</div>

		<!--  
		
		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me
				out</label>
		</div>
		-->

		<div class="container text-center">
			<button type="submit" class="btn btn-primary">Add</button>
		</div>

	</form>


</body>
</html>