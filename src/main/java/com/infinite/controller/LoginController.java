package com.infinite.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infinite.database.Database;

@Controller
public class LoginController {
	 @RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response){
		 Connection con=null;
		 PreparedStatement ps=null;
		 ResultSet s=null;
		 String username = request.getParameter("username");
		 String password = request.getParameter("password");
		 HttpSession session = request.getSession();
	    	session.setAttribute("user",username);
	    	session.setAttribute("pass",password);
	    	session.setAttribute("user", username);
		 try{
			 DataSource ds = Database.getDataSource();
			 con=ds.getConnection();
			 ps =con.prepareStatement("select * from login where username=? and password=?");
			 ps.setString(1, username);
			 ps.setString(2,password);
			 s = ps.executeQuery();
			 if(s.next()){
				 
				 return "Home";
			 
			 }else {
					return "invalid";
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
			return null;

		}
				 
}
