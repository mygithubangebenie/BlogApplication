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
<div class="formcontainer">
				<div class="card">
					<div class="card-header">
						<h3>Add this form</h3>
					</div>
					<div class="card-body">
						<form action="editdata/${blog.id}" method="post">
							<div class="form-group">
								<label>Title</label> <input type="text" name="title" value = "${blog.title}"
									class="form-control" />
							</div>
							<div class="form-group">
								<label>Content</label> <input type="text" name="content" value = "${blog.content}"
									class="form-control" />
							</div>

							<div class="form-group">
								<input type="submit" value="Add " class="btn btn-primary">
							</div>

						</form>
					</div>
				</div>
			</div>

			</div>
		</div>
</body>
</html>