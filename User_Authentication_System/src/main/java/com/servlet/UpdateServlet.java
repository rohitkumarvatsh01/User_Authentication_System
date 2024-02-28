package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	System.out.println("Update Operation Starts...");
            Connection con = DatabaseConnection.getConnection();

            String MobileNo = request.getParameter("MobileNo");
            String EmailId = request.getParameter("EmailId");
            String UserName = request.getParameter("UserName");
            String Password = request.getParameter("Password");
            String OriginalName = request.getParameter("OriginalName");

            String query = "UPDATE LoginSignup SET MobileNo=?, EmailId=?, UserName=?, Password=? WHERE FullName=?";

            try (PreparedStatement pstmt = con.prepareStatement(query)) {
                pstmt.setString(1, MobileNo);
                pstmt.setString(2, EmailId);
                pstmt.setString(3, UserName);
                pstmt.setString(4, Password);
                pstmt.setString(5, OriginalName);

                int rowsUpdated = pstmt.executeUpdate();

                if (rowsUpdated > 0) {
                    System.out.println(OriginalName + " is Updated Successfully");
                    response.sendRedirect("Update.jsp");

                } else {
                    System.out.println(OriginalName + " is not found in this Database");
                    response.sendRedirect("MainPage.jsp");
                }
            }

            con.close();
        } catch (Exception e) {
            System.out.println("Something went wrong!! ");
            e.printStackTrace();
        }
    }
}
