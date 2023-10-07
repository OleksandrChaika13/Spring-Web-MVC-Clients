<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>
<body style="background-color: #E9ECEB;">
<%@include file="./menu.jsp"%>
<div class="container m-2" style="background-color: #FCFCFC;">
	<div class="container-sm">
		<div class="row">
			<div class="col-md-12">
				<div class="container text-left mb-3">
                    <a href="addClient" class="btn btn-primary btn-sm m-2">Add Client</a><br>
                </div>
				<table class="table">
					<thead class="table-light">
						<tr>
							<th scope="col">No.</th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Phone</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${client}" var="p">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.firstName}</td>
								<td>${p.lastName}</td>
								<td>${p.phone}</td>
								<td>
								<a class="btn btn-warning btn-sm" href="update/${p.id}" role="button">Update</a>
								&nbsp;&nbsp;
								<a class="btn btn-danger btn-sm" href="delete/${p.id}" role="button">Delete</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>