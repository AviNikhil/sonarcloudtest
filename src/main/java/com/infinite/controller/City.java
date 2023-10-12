package com.infinite.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infinite.database.Database;

@Controller
public class City {
	@RequestMapping(value ="/city", method = RequestMethod.POST)
	public String cityrecord(HttpServletRequest request, HttpServletResponse response, Model m) {
		Connection con = null;
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			DataSource ds = Database.getDataSource();
			con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from train where source=? and destination=?");
			ps.setString(1, source);
			ps.setString(2, destination);
			ResultSet st = ps.executeQuery();
			System.out.println("query display");
			while (st.next()) {
				/*
				 * response.getWriter().print(""+"<html>"+"<head>"+"</head>"+
				 * "<body>"+"<form action='welcome.jsp' method='post'>"
				 * +"<center>"+"<h3 font-size:20px;>"+"<b>"+st.getString(1)+
				 * "</b>"+"</h3>"+"<br>"+"<br>"
				 * +"<h3 font-size:20px;>"+"<b>"+st.getString(2)+"</b>"+"</h3>"+
				 * "<br>"+"<br>"
				 * +"<h3 font-size:20px;>"+"<b>"+st.getString(3)+"</b>"+"</h3>"+
				 * "<br>"+"<br>" +
				 * "<h3 font-size:20px;>"+"<b>"+st.getString(4)+"</b>"+"</h3>"+
				 * "<br>"+"<br>" +
				 * "<h3 font-size:20px;>"+"<b>"+st.getString(5)+"</b>"+"</h3>"+
				 * "<br>"+"<br>"
				 * +"<input type='submit' value='ok'/>"+"</center>"+"</form>"+
				 * "</body>"+"</html>");
				 */
				String msg = "<html>"
						+"<head>"
						+"<style table, th, td { border: 1px solid black; border-collapse: collapse;}>"+"</style>"
						+"</head>"
						+ "<body>"
						+ "<center>"
						+ "<h4>Train Details..</h4><br>"
						+ "<table border='1' align='center' background-color='#1E90FF'>"
						+ "<tr>"+"<td>"+"<b>"+"Train No"+"</b>"+"</td>"
						        +"<td>"+"<b>"+st.getInt(1)+"</b>"+"</td>"+"</tr>"
						+ "<tr>"+"<td>"+"<b>"+"Train Name"+"</b>"+"</td>"
						        +"<td>"+"<b>"+st.getString(2)+"</b>"+"</td>"+"</tr>"
						+ "<tr>"+"<td>"+"<b>"+"Train Date"+"</b>"+"</td>"
						        +"<td>"+"<b>"+st.getString(3)+"</b>"+"</td>"+"</tr>"
						+ "<tr>"+"<td>"+"<b>"+"Train Source Point"+"</b>"+"</td>"
						        +"<td>"+"<b>"+st.getString(4)+"</b>"+"</td>"+"</tr>"
						+ "<tr>"+"<td>"+"<b>"+"Departure Time"+"</b>"+"</td>"
						        +"<td>"+"<b>"+st.getString(5)+"</b>"+"</td>"+"</tr>"
					    + "<tr>"+"<td>"+"<b>"+"Train Stopping Point"+"</b>"+"</td>"
						        +"<td>"+"<b>"+st.getString(6)+"</b>"+"</td>"+"</tr>"
			            + "<tr>"+"<td>"+"<b>"+"StoppingPoint ArrivalTime"+"</b>"+"</td>"
				                +"<td>"+"<b>"+st.getString(7)+"</b>"+"</td>"+"</tr>"
						+ "<tr>"+"<td>"+"<b>"+"Destination Point"+"</b>"+"</td>"
						        +"<td>"+"<b>"+st.getString(8)+"</b>"+"</td>"+"</tr>"
						+ "<tr>"+"<td>"+"<b>"+"Train Destination Time"+"</b>"+"</td>"
						 +"<td>"+"<b>"+st.getString(9)+"</b>"+"</td>"+"</tr>"
						+"</table>"
						+ "</center>"
						+ "</boby>"
						+ "</html>";
				m.addAttribute("mesage", msg);
				return "output1";
				/*
				 * response.getWriter().print(st.getString(4));
				 * response.getWriter().print(st.getString(5));
				 */
			}
		} catch (Exception e) {
			System.out.print(e);
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		return "notrain";

	}
}
