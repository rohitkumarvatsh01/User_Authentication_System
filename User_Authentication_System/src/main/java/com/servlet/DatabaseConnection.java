package com.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

 public static Connection getConnection() throws SQLException {
     try {
         Class.forName("com.mysql.cj.jdbc.Driver");

         String urlDatabase = "jdbc:mysql://localhost:3306/Project";
         String userNameDB = "root";
         String passwordDB = "Rohitkumar01@";

         return DriverManager.getConnection(urlDatabase, userNameDB, passwordDB);
     } catch (ClassNotFoundException e) {
         throw new SQLException("MySQL JDBC Driver not found", e);
     }
 }
}
