<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RegistrationForm</title>
<style>
h1 {
	font-size: 30px;
}
</style>
</head>
<body style="background-color:#FFDAB9;">
	<form action="register" method="post">
		<center>
			<h1>
				<b>Registration Form</b>
			</h1>
		</center>
		<br>
		<center>
			<table>
				<tr>
					<td>FullName :</td>
					<td><input type="text" name="fullname"
						placeholder="Enter your name" required /></td>
				</tr>
				<tr>
					<td>UserName :</td>
					<td><input type="text" name="username" placeholder="username"
						required /></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="password"
						placeholder="password" required /></td>
				</tr>
				<tr>
					<td>Birthday :</td>
					<td><input type="date" id="birthday" name="birthday" /></td>
				</tr>
				<tr>
					<td>Gender :</td>
					<td><input type="radio" id="gender" name="gender" value="male" />
						Male <input type="radio" id="gender" name="gender" value="female" />
						Female</td>
				</tr>
				<tr>
					<td>Married? :</td>
					<td><input type="radio" id="married" name="married"
						value="married" /> Yes <input type="radio" id="married"
						name="married" value="single" /> No</td>
				</tr>
				<tr>
					<td>Occupation :</td>
					<td><select name="occupation" id="occupation">
							<option value="Public">Public</option>
							<option value="Private">Private</option>
							<option value="Other">Other</option>
					</select></td>
				</tr>
				<tr>
					<td>Mobile No :</td>
					<td><input type="number" name="mobile" required /></td>
				</tr>
				<tr>
					<td>State :</td>
					<td><select name="state" id="state">
							<option value="Telangana">Developer</option>
							<option value="Andra Pradesh">Andra Pradesh</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Chennai">Chennai</option>
					</select></td>
				</tr>
				<tr>
					<td>PinCode :</td>
					<td><input type="number" name="pincode" required /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Register" /></td>
					<td><input type="reset" value="Clear" /></td>
				</tr>

			</table>
		</center>
	</form>
</body>
</html>