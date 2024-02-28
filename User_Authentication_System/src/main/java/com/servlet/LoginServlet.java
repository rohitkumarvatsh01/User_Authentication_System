package com.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			System.out.println("Database Connection Start...");
            Connection con = DatabaseConnection.getConnection();
            System.out.println("Database Connected Sucessful...");
			
			String UserName=request.getParameter("UserName");
			String Password=request.getParameter("Password");
			
			String query="SELECT * FROM LoginSignup WHERE UserName=? and Password=?";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1,  UserName);
			ps.setString(2,  Password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				RequestDispatcher rd=request.getRequestDispatcher("/MainPage.jsp");
				rd.forward(request, response);
			}
			else {
				response.sendRedirect("FailedPage.jsp");
			}
			
			rs.close();
			ps.close();
			con.close();
			
			System.out.println("Login Successful...");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
