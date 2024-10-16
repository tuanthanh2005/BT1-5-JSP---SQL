/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.mavenproject1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author trant
 */
public class DatabaseUtil extends HttpServlet {
    public static Connection getConnection() {
        Connection conn =null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection("jdbc:sqlserver://THANHTUAN;databaseName=QLTS", "sa","sa");
        } catch (Exception e) {
            System.out.println("Loi: "+e.toString());
                 
        }
        return conn;
    }
    public static void main(String[] args) {
        System.out.println(DatabaseUtil.getConnection());
    }

}