<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Add Todo</title>
<link href="webjars/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
</head>
	<body>
	<div class="container"> 
	<form:form method="post" modelAttribute="to-do">
	<form:hidden path="id"/>
		<fieldset class="form-group">
			<form:label path="description">Description</form:label>
			<form:input path="description" type="text" class="form-control" required="required"/>
			<form:errors path="description" cssClass="text-warning"/>
		</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
	</form:form>
		<script src="webjars/jquery/3.5.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	</div>		
	</body>
</html>