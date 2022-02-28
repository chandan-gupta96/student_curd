<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Student Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #0c5460">
			<div>
				<a href="#" class="navbar-brand"> Student Management </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Students List</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${Student != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${Student == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${Student != null}">
            			Edit Student
            		</c:if>
						<c:if test="${Student == null}">
            			Add New Student
            		</c:if>
					</h2>
				</caption>

				<c:if test="${Student != null}">
					<input type="hidden" name="id"
						value="<c:out value='${Student.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Student Name</label> <input type="text"
						value="<c:out value='${Student.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Student dob</label> <input type="date"
						value="<c:out value='${Student.dob}' />" class="form-control"
						name="dob">
				</fieldset>

				<fieldset class="form-group">
					<label>Student doj</label> <input type="date"
						value="<c:out value='${Student.doj}' />" class="form-control"
						name="doj">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
