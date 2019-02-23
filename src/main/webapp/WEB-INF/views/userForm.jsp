<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="col-md-12">
		<div class="row">
		<a href="fileForm" class="btn btn-primary">File Upload Form</a>
		<a href="cityForm" class="btn btn-primary">CityPage</a>
		<a href="stateForm" class="btn btn-primary">StatePage</a>
		<a href="cityStateForm" class="btn btn-primary">City State Page</a>
		<a href="stateAndCity" class="btn btn-primary">City And State Page</a>
		<a href="addressForm" class="btn btn-primary">Address Page</a>
		<br>
		<h1 class="text-primary">User Form</h1>
		</div>
		<div class="row">
			 <h3>Tooltip Example</h3>
  				<a href="home" data-toggle="tooltip" title="Back to Home" class="btn btn-primary">Home</a>
  			<script>
			$(document).ready(function(){
    		$('[data-toggle="tooltip"]').tooltip();   
			});
		</script>
		</div>
		<div class="row"><br><br><hr></div>
		<div class="row">
		<form:form action="addUser" method="post" modelAttribute="user" class="form-horizontal">
			<div class="container-fluid">
			 <div class="form-group">
					<label >Name</label>
						<form:input path="name" class="form-control" />
						<form:errors path="name" cssClass="error text-danger" />
			</div>
			<div class="form-group">
					<label>Email</label>

						<form:input path="email" class="form-control" /> 
						<form:errors path="email" cssClass="error text-danger" /><br>
					<button type="submit" class="btn btn-primary">Submit</button>
			</div>
			</div>
		</form:form>
		</div>
		<div class="row">
			<h2>Users List</h2>
		<table class="table table-striped table-bordered table-hover">
			<thead>
			<tr>
				<td><strong>Name</strong></td>
				<td><strong>Email</strong></td>
				<td><strong>Action</strong></td>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="user">
				<tr>
					<td>${user.name}</td>
					<td>${user.email}</td>
					<td>
					<a href="deleteUser?id=${user.id}" class="btn btn-primary">Delete</a>
					<a href="updateUser?id=${user.id}" class="btn btn-primary">Update</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
</div>		

		