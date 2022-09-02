<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<title>Welcome</title>
</head>
<body>
	<main class="p-5 bg-secondary min-vh-100">
		<section class="container bg-white p-3">
			<table class="table text-center mb-3">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Address</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${customers}" var="customers">
						<tr>
							<th scope="row">${customers.id}</th>
							<td>${customers.name}</td>
							<td>${customers.email}</td>
							<td>${customers.address}</td>
							<td>
								<form method="post" action="/delete">
									<input type="hidden" name="delete" value="${customers.id}">
									<button type="submit" class="btn btn-danger">X</button>
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<form method="post" action="/insert">
				<div class="mb-3">
					<label for="name" class="form-label">Name</label> <input
						type="text" class="form-control" id="name" name="name"
						placeholder="Name">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email</label> <input
						type="email" class="form-control" id="email" name="email"
						placeholder="email@email.it">
				</div>
				<div class="mb-3">
					<label for="address" class="form-label">Address</label> <input
						type="text" class="form-control" id="address" name="address"
						placeholder="Street">
				</div>
				<button type="submit" class="btn btn-primary">Insert</button>
			</form>
		</section>
	</main>
</body>
</html>