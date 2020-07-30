<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Todos List</title>
<link href="webjars/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<h1 align="center"><caption>Todo List</caption></h1>
	<table class="table table-hover">
		<thead class="thead-dark">
			<tr>
			<th>Description</th>
			<th>DueDate</th>
			<th>Is Finished?</th>
			<th> Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
			<tr>
			<td>${todo.description}</td>
			<td>${todo.targetDate}</td>
			<td>${todo.done}</td>
			<td><a href="/delete-todos?id=${todo.id}" type="button" class="btn btn-warning">Delete</a></td>
			</tr>
			</c:forEach>	
		</tbody>
	</table>
	<a href="getTodo">Add ToDo</a>
	<script src="webjars/jquery/3.5.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	</div>
</body>
</html>