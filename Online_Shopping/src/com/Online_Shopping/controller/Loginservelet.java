package com.Online_Shopping.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Loginservelet")
public class Loginservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection con;
	private static Statement stmnt;
    public Loginservelet() {
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
		String emailid = request.getParameter("emailid");
		String password = request.getParameter("password");
		

		HttpSession session = request.getSession(true);
		session.setAttribute("email",emailid);
		@SuppressWarnings("unused")
		String user=(String)session.getAttribute("email");
		
		PrintWriter out = response.getWriter();
		try {
			ResultSet result = stmnt.executeQuery("Select * from UserInfo where emailid='"+emailid+"' and password='"+password+"'");
	       if(result.next())
		{
			RequestDispatcher rd1 = request.getRequestDispatcher("Front_panel.jsp");
			rd1.forward(request, response);
		}
		else{
			session.invalidate();
			RequestDispatcher rd2 = request.getRequestDispatcher("Login_page.jsp");
			rd2.include(request, response);
			out.println("<html>");
			out.println("<body>");
			out.println("Incorrect Email Id/Password");
			out.println("<body>");
			out.println("</html>");
		}
		} catch (Exception e) {
			System.out.println(e);
		}
		

	}

}
