package com.servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ReadServlet")
public class ReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection con = DatabaseConnection.getConnection();
            System.out.println("Read Operation Starts...");

            String query = "SELECT * FROM LoginSignup";
            try (PreparedStatement ps = con.prepareStatement(query);
                 ResultSet rs = ps.executeQuery()) {

                List<UserData> userList = new ArrayList<>();

                while (rs.next()) {
                    UserData user = new UserData();
                    user.setFullName(rs.getString("FullName"));
                    user.setMobileNo(rs.getString("MobileNo"));
                    user.setEmailId(rs.getString("EmailId"));
                    user.setUserName(rs.getString("UserName"));
                    user.setPassword(rs.getString("Password"));
                    userList.add(user);
                }

                // Set the user list as an attribute in the request
                request.setAttribute("dataList", userList);
                System.out.println("Number of Records Retrieved: " + userList.size());
            }

            con.close();
            request.getRequestDispatcher("Read.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println("Something went wrong");
            e.printStackTrace();
        }
    }
}
