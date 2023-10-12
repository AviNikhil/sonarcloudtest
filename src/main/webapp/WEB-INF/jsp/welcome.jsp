<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
</style>
</head>
<body style="background-color:#FFDAB9;">
<form action="train" method="post">
<%@ page import="javax.servlet.http.HttpSession"%>
	<%
        String un = (String) session.getAttribute("user");
	%>
	<h3>
		Hello,
		<%=un%></h3>
<center><h1><b>>>>>Train Enquiery....!</b></h1>
<img alt="train" src="https://i.pinimg.com/564x/61/54/bf/6154bf0d0a3706e27093ecb796df5472.jpg" width="200" height="150">
<br>
<br>
Train Number : <input type="number" name="trainno" required/>
               <input type="submit" value ="submit"/>
               
            <%--  <%if(request.getAttribute("message")!=null)%> --%>
             <%-- <% <table border="1">
             <td><b>Train No</b></td>
             <td><b>Train Name</b></td>
             <td><b>Train Date</b></td>
             <td><b>SourcePoint</b></td>
             <td><b>Departure Time</b></td>
             <td><b>StoppingStations</b></td>
             <td><b>ArrivalStations</b></td>
             <td><b>DestinationPoint</b></td>
             <td><b>Reaching Time</b></td> --%>

            <%--   <tr><%=request.getAttribute("message")%></tr> --%>

</center>
</form>

</body>
</html>