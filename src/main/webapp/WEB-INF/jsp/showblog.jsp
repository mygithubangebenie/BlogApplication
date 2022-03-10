<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="container-fluid">

			<div
				class="d-flex justify-content-center align-items-center todo-container">
				<div class="card card-body">
					<div class="d-flex justify-content-between">
						<h3>All</h3>
						<button class="btn btn-primary">New blog</button>
					</div>
					<div class="form-group">
								<input type="submit" value="Add " class="btn btn-primary">
							</div>
					
					<div>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Title</th>
									<th scope="col">Content</th>
									<th scope="col">action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">${blog.id}</th>
									<td>${blog.title}</td>
									<td>${blog.content}</td>

									<td><a href="/show/${blog.id}" class="btn btn-primary">show
											blog</a><a href="/update/${blog.id}" class="btn btn-primary">Edit
											blog</a><a href="/delete/${blog.id}" class="btn btn-danger">Delete
											blog</a></td>
								</tr>
							</tbody>
						</table>

					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>