package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/CreateServlet")
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
        	System.out.println("Create Operation Starts...");
			Connection con=DatabaseConnection.getConnection();
			
			String FullName=request.getParameter("FullName");
			String MobileNo=request.getParameter("MobileNo");
			String EmailId=request.getParameter("EmailId");
			String UserName=request.getParameter("UserName");
			String Password=request.getParameter("Password");
			
			String query="INSERT INTO LoginSignup (FullName, MobileNo, EmailId, UserName, Password) VALUES(?, ?, ?, ?, ?)";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, FullName);
			ps.setString(2, MobileNo);
			ps.setString(3, EmailId);
			ps.setString(4, UserName);
			ps.setString(5, Password);
			
			int rowsAffected=ps.executeUpdate();
			if(rowsAffected>0) {
				response.getWriter().println("Signup Successful");
				response.sendRedirect("MainPage.jsp");
			}
			else {
				response.sendRedirect("FailedPage.jsp");
			}
			ps.close();
			con.close();
			
			System.out.println("New Record is Created...");

			
		} catch (SQLException e) {
			response.sendRedirect("Create.jsp");
			e.printStackTrace();
		}
	}

}
