package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
        	
        	System.out.println("Delete Operation Starts...");
            Connection con = DatabaseConnection.getConnection();

            String fullNameToDelete = request.getParameter("FullNameToDelete");

            String query = "DELETE FROM LoginSignup WHERE FullName=?";

            try (PreparedStatement pstmt = con.prepareStatement(query)) {
                pstmt.setString(1, fullNameToDelete);

                int rowsDeleted = pstmt.executeUpdate();

                if (rowsDeleted > 0) {
                    System.out.println(fullNameToDelete + " is Deleted Successfully");
                    response.sendRedirect("Delete.jsp");
                } else {
                    System.out.println(fullNameToDelete + " is not found in this Database");
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
