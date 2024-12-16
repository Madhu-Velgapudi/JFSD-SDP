<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}
%>

<html>
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
</head>
<body>
<%@include file="empnavbar.jsp" %>
Welcome <%=emp.getName()%>
</body>
</html>  