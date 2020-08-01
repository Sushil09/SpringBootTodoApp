<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}" />

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
		<!--Target Date-->
		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control" required="required"/>
			<form:errors path="targetDate" cssClass="text-warning"/>
		</fieldset>
			<button type="submit" class="btn btn-success">Add</button>
	</form:form>
	</div>	
	<script src="webjars/jquery/3.5.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.0.1/js/bootstrap-datepicker.js"></script>
	<script>
		$('#targetDate').datepicker({
			format : 'dd/mm/yyyy'
		});
	</script>
		
	</body>
</html>