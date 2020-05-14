package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login1
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			
			PrintWriter out=response.getWriter();
			String uname=request.getParameter("uname");
			String pass=request.getParameter("pass");
			String sql="select * from login where uname=? and pass=?";
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/summer","USER","subhajit");
			PreparedStatement ps =cn.prepareStatement(sql);
			ps.setString(1,uname);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				out.println("loged in.");
				HttpSession session=request.getSession();
				session.setAttribute("username", uname); 
				
				RequestDispatcher rd =request.getRequestDispatcher("Hotelview.jsp");
				rd.forward(request, response);
			}else{
				out.println("id not found ,,REGISTER!!");
				RequestDispatcher rd =request.getRequestDispatcher("Welcome.jsp");
				rd.include(request, response);	
			}
		}catch(Exception e){
			System.out.println(e);
		}
		
		
	}

}
