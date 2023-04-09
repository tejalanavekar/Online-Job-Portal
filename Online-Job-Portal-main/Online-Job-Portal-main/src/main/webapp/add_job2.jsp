<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Jobs</title>
<%@include file="all_components2/all_css2.jsp"%>
</head>
<body style="background-color : #f0f8ff;">
<%@include file="all_components2/navbar2.jsp"%>
<div class="container p-2">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-success">
							<i  class="fas fa-chalkboard-teacher fa-3x" ></i>
							 <c:if test="${not empty succMsg  }">
<h4 class="text-center text-danger">${succMsg }</h4>
<remove var="succMsg" />
</c:if> 
<h5>Add Jobs</h5>
						</div>
						<form action="add_job" method="post">
							<div class="form-group">
								<label>Enter Job Title</label> <input type="text"
								 name="title" required class="form-control">
							</div>
							
							<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									 class="custom-select"
									id="inlineFormCustomSelectPref" >
							<option selected>Choose...</option>
							<option value="Odisha">Odisha</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="Gujarat">Gujarat</option>
							<option value="Bhubaneshwar">Bhubaneshwar</option>
							<option value="Delhi">Delhi</option>
							<option value="Bengalore">Bengalore</option>
							<option value="Chennai">Chennai</option>
							<option value="Hyderababd">Hyderebabd</option>
							</select>
							</div>
							<div class="form-group col-md-4">
							<label>Category</label> <select class="custom-select"
							id="inlineFormCustomSelectPref" name="category">
							<option selected>Choose...</option>
							<option value="IT">IT</option>
							<option value="Developer">Developer</option>
							<option value="Banking">Banking</option>
							<option value="Engineer">Engineer</option>
							<option value="Teacher">Teacher</option>
							</select>
							</div>
							<div class="form-group col-md-4">
							<label>Job Status</label><select class="form-control" name="status">
							<option class="Active" value="Active">Active</option>
							<option class="Inactive" value="Inactive">Inactive</option>
							</select>
							</div>
							</div>
							<div class="form-form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
							class="form-control"></textarea>
							</div>
							<button class="btn btn-success">Publish Job</button>
							</form>
							</div>
							</div>
							</div>
							</div>
							
							
							
							
</body>
</html>