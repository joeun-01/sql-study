package myDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class preparedStatement {
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
		PreparedStatement pstmt = null;
		try {
			String psql = "insert into instructor value (?, ?, ?, ?)";
			pstmt = con.prepareStatement(psql);
			String id = "12345", name = "Neumann", dept_name = "Biology";
			int salary = 98000;
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, dept_name);
			pstmt.setInt(4, salary);
			int count = pstmt.executeUpdate();
			System.out.println(count);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		try {
			if (pstmt != null && !pstmt.isClosed())
				pstmt.close();
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
