package getdb;
import java.sql.*;
public class GetDatabase {
	static Connection cn=null;
	static String driver="com.ibm.db2.jcc.DB2Driver";
	static String url="jdbc:db2://localhost:50000/summer";
	static String user="USER";
	static String pass="subhajit";
	
	public static Connection getCn(){
		try{
			Class.forName(driver);
			cn=DriverManager.getConnection(url,user,pass);
		}catch(Exception e){
			System.out.println(e);
		}
		return cn;
	}

}
