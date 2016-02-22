package chapter4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionPoolTest {

	public static void main(String[] args) throws Exception {
		long start = System.currentTimeMillis();
		String sql = "SELECT * FROM test";
		ConnectionPool pool = null;
		for (int i=0; i<1000; i++) {
			pool = ConnectionPool.getInstance();
			Connection conn = pool.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				
			}
			
			rs.close();
			stmt.close();
			pool.release(conn);
		}
		pool.closePool();
		long end = System.currentTimeMillis();
		System.out.println("使用连接池所花费的时间：" + (end - start) + "ms\n");
		
		start = System.currentTimeMillis();
		for (int i=0; i<1000; i++) {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/javaweb?useUnicode=true&characterEncoding=utf-8&useSSL=false";
			Connection conn = DriverManager.getConnection(url, "root", "root");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT * FROM test");
			while (rs.next()) {
				
			}
			
			rs.close();
			stmt.close();
			conn.close();
		}
		end = System.currentTimeMillis();
		System.out.println("不使用连接池所花费的时间：" + (end - start) + "ms");
	}
}
