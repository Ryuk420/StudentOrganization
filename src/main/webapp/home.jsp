<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Home Page</title>
</head>
<body>
	<h1>Welcome</h1>
	<c:if test="${not empty studentobj }">
	<h1>${studentobj}.name</h1>
	<h1>FROmM ${studentobj}.address</h1>	
	</c:if>
</body>
</html>