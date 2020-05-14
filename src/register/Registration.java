package register;
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

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/summer","USER","subhajit");
		String uname=request.getParameter("uname");
		String addr=request.getParameter("addr");
		String pass=request.getParameter("pass");
		String phone=request.getParameter("phone");
		String sql="insert into login(uname,pass,addr,phone) values(?,?,?,?)";
		PreparedStatement ps=cn.prepareStatement(sql);
		ps.setString(1,uname);
		ps.setString(2,pass);
		ps.setString(3,addr);
		ps.setString(4,phone);
		ps.execute(); 
		PrintWriter out=response.getWriter();
		out.println("Record Saved");
		RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
		rd.include(request,response);
		
	}catch(Exception e) {
		System.out.println(e);
	}
	}

}
