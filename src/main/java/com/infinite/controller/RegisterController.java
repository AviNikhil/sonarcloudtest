package com.infinite.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.infinite.database.Database;

@Controller
public class RegisterController {
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(HttpServletRequest request,HttpServletResponse response){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String fullname = request.getParameter("fullname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String birthday = request.getParameter("birthday");
		String gender   = request.getParameter("gender");
		String occupation   = request.getParameter("occupation");
		String married  = request.getParameter("married");
		int mobile =Integer.parseInt(request.getParameter("mobile"));
		String state    = request.getParameter("state");
		int pincode =Integer.parseInt(request.getParameter("pincode"));
		
		try{
			DataSource ds=Database.getDataSource();
			con=ds.getConnection();
			ps=con.prepareStatement("insert into login values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,fullname);
			ps.setString(2,username);
			ps.setString(3, password);
			ps.setString(4, birthday);
			ps.setString(5, gender);
			ps.setString(6, occupation);
			ps.setString(7, married);
			ps.setInt(8, mobile);
			ps.setString(9, state);
			ps.setInt(10, pincode);
			int s=ps.executeUpdate();
			System.out.println("Success");
			if(s!=0){
				return "success";
			}
			else{
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
