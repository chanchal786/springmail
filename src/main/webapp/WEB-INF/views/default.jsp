<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html invert="" style="font-size: 10px;font-family: Roboto, Arial, sans-serif; background-color: #fafafa;" lang="en-GB">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><tiles:getAsString name="title" /></title>
		 <link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"></link> 
<!-- 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 -->		<script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"></script>
			 <script type="text/javascript" src="<c:url value="/resources/js/jquery.validate.js"/>"></script>
			 <script type="text/javascript" src="<c:url value="/resources/js/additional-methods.js"/>"></script>
	<!-- 	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> -->
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.js"/>"></script>
 		<style>
			input.error {
		 		border: 1px dotted red; 
		 	}
		 	form.form1 label.error, label.error {
				color: red;
				font-style: italic
			}
		</style>

</head>
<body>
<div class="container">
	<div class="row">
	<tiles:insertAttribute name="header"/>		
	</div><!-- header  ends -->
	
	<div class="row">
	<hr/>
		<tiles:insertAttribute name="body" />
	
	</div><!-- boody end here-->
	
	<div class="row">
	<hr/>
	<tiles:insertAttribute name="footer"/>		
	</div><!-- footer  ends -->
</div>
</body>
</html>