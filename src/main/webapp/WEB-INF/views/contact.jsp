<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>contact us</title>


<c:import url="head-meta.jsp" />
<style>
body {
	background: url(resources/images/cntimg.jpg) no-repeat center center
		fixed;
}

.box .box-content {
	width: 100%;
	padding: 12px 10px;
	margin: 0;
	position: absolute;
	top: 35%;
	left: 0;
	font-size: 18px;
	color: #fff;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 1;
	transition: all 0.5s ease 0s;
}
</style>

</head>
<body>

	<c:import url="head.jsp" />
	<br>
	<br>
	<br>
	<br>

	<div class="container" >

		<div class="container-fluid" >

			<div class="span">

				<div class="col-sm-9">
					<img src="resources/images/cnt1.jpg">
				</div>
				<div class="col-sm-3"></div>

			</div>
		</div>

	</div>
	<br>
	<br>
	<div class="container">

		<div class="row" style="margin: auto; width: 85%;" >
			<div class="col-md-10" >

				<div class="well well-sm">
<form action="thank" method="post">
					<div class="row">

						<div class="col-md-6">



							<div class="form-group">
								<label for="email"> Email Address</label>
								<div class="input-group">
									<span class="input-group-addon">
									<i class="glyphicon glyphicon-envelope blue"></i> </span> <input
										type="email" class="form-control" name="email" id="email"
										placeholder="Enter email" required="required" />
								</div>
							</div>
							<div class="form-group">
								<label for="subject"> Subject</label> <select id="subject"
									name="subject" class="form-control" required="required">
									<option value="service">General Customer Service</option>
									<option value="product">Product Support</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="name"> Message</label>
								<textarea name="message" id="message" class="form-control"
									rows="9" cols="25" required="required" placeholder="Message"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<input type="submit" class="btn btn-primary pull-right"
								id="btnContactUs" value="Send Message" />
						</div>
					</div>
</form>
				</div>

			</div>

		</div>
	</div>
	
</body>
</html>