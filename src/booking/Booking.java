package booking;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/summer","USER","subhajit");
		String name=request.getParameter("name");
		String reservtn=request.getParameter("reservtn");
		String roomNo=request.getParameter("roomNo");
		String days=request.getParameter("days");
		String date=request.getParameter("date");
		String sql="insert into hotel(name,reservtn,roomNo,days,date) values(?,?,?,?,?)";
		PreparedStatement ps=cn.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2,reservtn);
		ps.setString(3,roomNo);
		ps.setString(4,days);
		ps.setString(5,date);
		ps.execute(); 
		PrintWriter out=response.getWriter();
		out.println("Hotel Booked");
		RequestDispatcher rd=request.getRequestDispatcher("Final.jsp");
		rd.include(request,response);
		
	}catch(Exception e) {
		System.out.println(e);
	}
	}

}
