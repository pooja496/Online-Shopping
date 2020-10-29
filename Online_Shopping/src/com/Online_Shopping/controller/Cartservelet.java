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


@WebServlet("/Cartservelet")
public class Cartservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	Statement stmnt = null;   
    public Cartservelet() {
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
		HttpSession session = request.getSession(false);
		String user=(String)session.getAttribute("email");
        String Id= request.getParameter("id");
		String Products= request.getParameter("product");
		String Descr= request.getParameter("descr");
		System.out.print(Products);
		System.out.print(Descr);
		
			
        if(session.getAttribute("email") != null)
        {
		try {
			stmnt.executeUpdate("insert into cartproducts values('"+user+"','"+Id+"','"+Products+"','"+Descr+"')");
			RequestDispatcher rdj = request.getRequestDispatcher("Cart_page.jsp");
            rdj.forward(request,response);
		}catch (Exception e) {
			System.out.println(e);
		}
      }
        else{
        	RequestDispatcher rdy = request.getRequestDispatcher("Login_page.jsp");
            rdy.forward(request,response);
          }
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}