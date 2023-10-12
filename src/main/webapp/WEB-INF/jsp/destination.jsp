<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TrainSearch</title>
</head>
<body style="background-color:#FFDAB9;">
<form action="city" method="post">
<%@ page import="javax.servlet.http.HttpSession"%>
	<%
        String un = (String) session.getAttribute("user");
	%>
	<h3>
		Hello,
		<%=un%></h3>
<br>
<br>
<center>
<table>
               <tr>
					<td>Source :</td>
					<td><select name="source" id="source">
							<option value="Kacheguda">Kacheguda</option>
							<option value="Nampally">Nampally</option>
							<option value="Vishakapatnam">Vishakapatnam</option>
							<option value="Hyderabad">Hyderabad</option>
					</select></td>
				</tr>
				<br>
				<br>
				<br>
				<tr>
					<td>Destination :</td>
					<td><select name="destination" id="destination">
							<option value="Chennai">Chennai</option>
							<option value="Adilabad">Adilabad</option>
							<option value="Hyderabad">Hyderabad</option>
							<option value="Bengalore">Bengalore</option>
							<option value="Tirupathi">Tirupathi</option>
					</select></td>
				</tr>
</table>
                <input type="submit" value="GetDetails"/>
<%-- <%if(request.getAttribute("mesage")!=null)%>
<tr><%=request.getAttribute("mesage")%></tr>
 --%>
</center>

</form>

</body>
</html>