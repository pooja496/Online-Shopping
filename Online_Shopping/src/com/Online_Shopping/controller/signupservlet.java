package com.Online_Shopping.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/signupservlet")
public class signupservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection con;
	private static Statement stmnt;
	
    public signupservlet() {
        super();
      }
    public void init(ServletConfig config)
    {
    	try{
        	Class.forName("com.mysql.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Signup","root","pooja");
        	System.out.println(con);
        	stmnt = con.createStatement();
        }catch(Exception e){
        	System.out.println(e);
        }
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String mobileno = request.getParameter("mobileno");
		String emailid = request.getParameter("emailid");
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("confirm_password");
	
		
		try{
			stmnt.executeUpdate("insert into UserInfo value('"+firstname+"','"+lastname+"','"+mobileno+"','"+emailid+"','"+password+"','"+confirm_password+"')");
			RequestDispatcher rds = request.getRequestDispatcher("Front_panel.jsp");
		    rds.forward(request,response);
			}catch(Exception e){
				System.out.println(e);
			}
		}
	}
	


