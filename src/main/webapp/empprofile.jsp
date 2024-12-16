<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
</head>
<body>
<%@include file="empnavbar.jsp" %>

  <h3 style="text-align: center;"><u>My Profile</u></h3>

<div style="text-align: center;">
            <b>ID:</b><%=emp.getId()%><br><br>
            <b>NAME:</b><%=emp.getName()%><br><br>
           <b>GENDER:</b><%=emp.getGender()%><br><br>
           <b>DATE OF BIRTH:</b><%=emp.getDateofbirth()%><br><br>
           <b>DEPARTMENT:</b><%=emp.getDepartment()%><br><br>
          <b> SALARY:</b><%=emp.getSalary()%><br><br>
           <b>LOCATION:</b><%=emp.getLocation()%><br><br>
           <b>EMAIL:</b><%=emp.getEmail()%><br><br>
           <b>CONTACT:</b><%=emp.getContact()%><br><br>
           <b>STATUS:</b><%=emp.getStatus()%><br><br>
</div>

</body>
</html>