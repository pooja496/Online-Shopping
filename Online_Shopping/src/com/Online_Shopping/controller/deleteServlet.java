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


@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection con;
	private static Statement stmnt;   
   
    
    public deleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init(ServletConfig config)
    {
    	try{
        	Class.forName("com.mysql.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Search","root","pooja");
        	System.out.println(con);
        	stmnt = con.createStatement();
        }catch(Exception e){
        	System.out.println(e);
        }
    }
	   
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Id= request.getParameter("id");
		HttpSession session = request.getSession(false);
		
		if(session.getAttribute("email") != null)
        {
		try {
			stmnt.executeUpdate("delete from cartproducts where Id='"+Id+"'");
			RequestDispatcher rda = request.getRequestDispatcher("Cart_page.jsp");
            rda.include(request,response);
		}catch (Exception e) {
			System.out.println(e);
		}
        }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
