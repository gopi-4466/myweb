<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" type="text/css"
	th:href="@{/webjars/bootstrap/3.3.7/css/bootstrap.min.css}" />

<!-- include java script in the footer -->
<script type="text/javascript"
	th:src="@{/webjars/jquery/3.2.1/jquery.min.js/}"></script>
<script type="text/javascript"
	th:src="@{/webjars/bootstrap/3.3.7/js/bootstrap.min.js}"></script>

<title>Spring Boot MongoDB Demo</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center">Spring Boot + MongoDB Demo</h1>
		<div class="col-md-6">
			<form name="saveUser" action="/save" method="post"
				class="form-horizontal">
				<div class="form-group">
					<label for="firstName">First Name:</label> <input type="text"
						id="firstName" class="form-control" placeholder="First Name"
						name="firstName" />
				</div>

				<div class="form-group">
					<label for="lastName">Last Name:</label> <input type="text"
						id="lastName" class="form-control" placeholder="Last Name"
						name="lastName">
				</div>

				<div class="form-group">
					<label for="email">Email:</label> <input type="email" id="email"
						class="form-control" placeholder="Email" name="email">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</form>
		</div>


		<div class="col-md-12">
			<h2>Saved Users</h2>
			<table id="usersTable" class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>


		<div class="row-md-8">
			<div class="col-md-3">
				<img th:src="@{/kube12.jpg}" alt="logo" height="200">
			</div>
			<div class="col-md-8">
				<h4 class="text-center">GANA TECH SOLUTIONS - Consultant,
					Training, Development Center.</h4>
				<h4 class="text-center">Contact @ +91-8886599888 </h4>
				<h5 class="text-center">
					Copyrights 2020 by <a href="http://ganatechnologies.com/">Gana
						Technologies</a>
				</h5>
			</div>
		</div>

	</div>

	<script>
		$.ajax({
			url : "/api/users",

			success : function(response) {
				$.each(response, function(i, item) {
					var row = $("<tr />");
					$("#usersTable").append(row);

					row.append($("<td>" + item.id + "</td>"));
					row.append($("<td>" + item.firstName + "</td>"));
					row.append($("<td>" + item.lastName + "</td>"));
					row.append($("<td>" + item.email + "</td>"));

				});
			}
		})
	</script>
</body>
</html>
