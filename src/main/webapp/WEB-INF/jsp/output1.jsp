<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TrainDestination</title>
<style>
input.right{
 float: right;
}

</style>
</head>
<body style="background-color:#FFDAB9;">
<center><h1><b>Train Enquiery Platform</b></h1></center>
<form action="backhome" method="post">
 <input type="submit" value="Back" class="right"/>
</form>
	<jsp:include page="destination.jsp"/>
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
			<tr><%=request.getAttribute("mesage")%></tr>
		</table>
To book TicketsPlease Visit The Visit :<a href="https://www.irctc.co.in/nget/train-search">IRCTC</a>
</html>