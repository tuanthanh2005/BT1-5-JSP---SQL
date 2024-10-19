/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.mavenproject1.resources;

import java.sql.Connection;
import java.sql.DriverManager;
public class Servlet {
    public static Connection getConnection() {
        Connection conn =null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn =DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=QLTS","sa", "sa");
        } catch (Exception e) {
            System.out.println("Loi :"+ e.toString());
        }
       return conn;
           
    }
    public static void main(String[] args) {
        System.out.println(Servlet.getConnection());
    }
  
    
}



