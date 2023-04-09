<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#">Job Portal</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			
			<c:if test="${userobj.role eq 'admin' }"></c:if>
			<li class="nav-item"><a class="nav-link" href="add_job2.jsp"><i class="far fa-plus-square"></i>Post Jobs</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="view_jobs2.jsp"><i class="far fa-eye"></i>View Jobs</a>
			</li>

		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="login2.jsp" class="btn btn-light mr-1"><i class="fas fa-user-shield "></i> Login</a>
			<a href="signup2.jsp" class="btn btn-light"><i class="fas fa-user "></i> Signup</a>
		</form>
	</div>
</nav>