<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
cropped-image-clip-rectangle {
    position: absolute;
    top: 0;
    width: 80%;
    height: 80%;
    object-fit: cover;</style>
</head>
<body style="background-color:#FFDAB9;">
<img alt="Train" src="https://previews.123rf.com/images/rrraven/rrraven1612/rrraven161200028/69006154-vector-retro-train-logo-on-white-background.jpg" width="100px" height="80">
<center><h1><b>Welcome To Train Enquiery Platform</b></h1></center>
<p>Platform Locator enables rail passengers to check in advance the platform on which their train is scheduled to arrive.
 Train stations can be huge and confusing, with multiple levels and platforms, making it difficult for passengers to navigate and find their way around. Each train arrives at a specific platform. A train platform locator can provide passengers with the necessary 
information to quickly locate their platform and ensure that they board their train on time.
             An IRCTC platform number enquiry can also be made at railway station counters. Alternatively, you can check it beside the train timetable on the display screens at the station, but not all stations have them. Using this online feature, on the other hand, can
 help you save time and you can head straight to the platform where the train will be arriving.</p>
<br>
<form action="traindetails" method="post">
<center>Search Train By TrainNo: </center><br>
<center><input type="submit" value="TrainNum"/></center>

</form>

<form action="destination" method="post">
<center>Search Train By Source And Destination Points:</center><br>
<center><input type="submit" value="City"/></center>
</form>

</body>
</html>