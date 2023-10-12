<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TrainNumber</title>
<style>
input.right{
 float: right;
}

</style>
</head>
<body style="background-color:#FFDAB9;">
<form action="backhome" method="post">
 <input type="submit" value="Back" class="right"/>
</form>
<jsp:include page="welcome.jsp"/>
		<table>
			<!-- <tr>
				<td><b>Train no</b></td>
				<td><b>Train name</b></td>
				<td><b>Train Date</b></td>
				<td><b>Source</b></td>
				<td><b>Departure</b></td>
				<td><b>Stopping Point</b></td>
				<td><b>Via_Arrival</b></td>
				<td><b>Departure</b></td>
				<td><b>Destination</b></td>
				<td><b>EndPoint</b></td>
				
			</tr> -->
			<tr><%=request.getAttribute("message")%></tr>
		</table>
		To book TicketsPlease Visit The Visit :<a href="https://www.irctc.co.in/nget/train-search">IRCTC</a>
</body>
</html>