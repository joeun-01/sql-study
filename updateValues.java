package myDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class updateValues {
	public static void main(String[] args) {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost/university";
			String user = "root", passwd = "joeun";
			con = DriverManager.getConnection(url, user, passwd);
			System.out.println(con);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// database operations ...
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			String update = "update instructor set salary = salary * 1.1 where dept_name = 'Physics'";
			int count = stmt.executeUpdate(update);
			System.out.println(count);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			if (stmt != null && !stmt.isClosed())
				stmt.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		try {
			if (con != null && !con.isClosed())
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
