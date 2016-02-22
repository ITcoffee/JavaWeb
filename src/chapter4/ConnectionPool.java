package chapter4;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Vector;

public class ConnectionPool {

	private Vector<Connection> pool;
	private String url;
	private String username;
	private String password;
	private String driverClassName;
	private int poolSize = 1;
	private static ConnectionPool instance = null;
	
	// 私有的构造方法，禁止外部创建本类的对象，要想获得本类的对象，通过getInstance方法
	private ConnectionPool() {
		init();
	}
	
	// 连接池初始化方法，读取属性文件的内容，建立连接池中的初始连接
	private void init() {
		pool = new Vector<Connection>(poolSize);
		readConfig();
		addConnection();
	}
	
	// 返回连接到连接池中
	public synchronized void release(Connection conn) {
		pool.add(conn);
	}
	
	// 关闭连接池中的所有连接
	public synchronized void closePool() {
		for (int i=0; i<pool.size(); i++) {
			try {
				((Connection) pool.get(i)).close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			pool.remove(i);
		}
	}
	
	// 返回当前连接池的一个对象
	public static ConnectionPool getInstance() {
		if (instance == null) {
			instance = new ConnectionPool();
		}
		
		return instance;
	}
	
	// 返回连接池中的一个连接
	public synchronized Connection getConnection() {
		if (pool.size() > 0) {
			Connection conn = pool.get(0);
			pool.remove(conn);
			return conn;
		} else {
			return null;
		}
	}
	
	// 在连接池中创建初始设置的连接
	private void addConnection() {
		Connection conn = null;
		for (int i=0; i<poolSize; i++) {
			try {
				Class.forName(driverClassName);
				conn = DriverManager.getConnection(url, username, password);
				pool.add(conn);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} 
		}
	}
	
	// 读取设置连接池的属性文件
	private void readConfig() {
		try {
//			// 绝对路径1.1.1 fail
//			String path = System.getProperty("user.dir") + "src\\conf\\chapter4\\dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
//			// 绝对路径1.1.2 ok
//			String path = System.getProperty("user.dir") + "\\src\\conf\\chapter4\\dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
//			// 绝对路径1.2.1 fail
//			String path = System.getProperty("user.dir") + "src/conf/chapter4/dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
//			// 绝对路径1.2.2 ok
//			String path = System.getProperty("user.dir") + "/src/conf/chapter4/dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
//			
//			// 相对路径2.1.1 ok
//			InputStream fis = getClass().getClassLoader().getResourceAsStream("conf\\chapter4\\dbpool.properties");
//			// 相对路径2.1.2 ok
//			InputStream fis = getClass().getClassLoader().getResourceAsStream("\\conf\\chapter4\\dbpool.properties");
//			// 相对路径2.2.1 ok
//			InputStream fis = getClass().getClassLoader().getResourceAsStream("conf/chapter4/dbpool.properties");
//			// 相对路径2.2.2 fail
//			InputStream fis = getClass().getClassLoader().getResourceAsStream("/conf/chapter4/dbpool.properties");
//			
//			// 相对路径3.1.1 fail
//			String path = getClass().getClassLoader().getResource("conf\\chapter4\\dbpool.properties").getFile();
//			FileInputStream fis = new FileInputStream(path);
//			// 相对路径3.1.2 fail
//			String path = getClass().getClassLoader().getResource("\\conf\\chapter4\\dbpool.properties").getFile();
//			FileInputStream fis = new FileInputStream(path);
//			// 相对路径3.2.1 ok
//			String path = getClass().getClassLoader().getResource("conf/chapter4/dbpool.properties").getFile();
//			FileInputStream fis = new FileInputStream(path);
//			// 相对路径3.2.2 fail
//			String path = getClass().getClassLoader().getResource("/conf/chapter4/dbpool.properties").getFile();
//			FileInputStream fis = new FileInputStream(path);
//			
//			// 相对路径4.1.1 fail
//			String path = getClass().getClassLoader().getResource("conf\\chapter4\\dbpool.properties").getPath();
//			FileInputStream fis = new FileInputStream(path);
//			// 相对路径4.1.2 fail
//			String path = getClass().getClassLoader().getResource("\\conf\\chapter4\\dbpool.properties").getPath();
//			FileInputStream fis = new FileInputStream(path);
			// 相对路径4.2.1 ok
			String path = getClass().getClassLoader().getResource("conf/chapter4/dbpool.properties").getPath();
			FileInputStream fis = new FileInputStream(path);
//			// 相对路径4.2.2 fail
//			String path = getClass().getClassLoader().getResource("/conf/chapter4/dbpool.properties").getPath();
//			FileInputStream fis = new FileInputStream(path);
//			
//			// 相对路径5.1.1 ok
//			String path = "src\\conf\\chapter4\\dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
//			// 相对路径5.1.2 fail
//			String path = "\\src\\conf\\chapter4\\dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
//			// 相对路径5.2.1 ok
//			String path = "src/conf/chapter4/dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
//			// 相对路径5.2.2 fail
//			String path = "/src/conf/chapter4/dbpool.properties";
//			FileInputStream fis = new FileInputStream(path);
			
			Properties props = new Properties();
			props.load(fis);
			this.driverClassName = props.getProperty("driverClassName");
			this.username = props.getProperty("username");
			this.password = props.getProperty("password");
			this.url = props.getProperty("url");
			this.poolSize = Integer.parseInt(props.getProperty("poolSize"));
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("读取属性文件出错！");
		}
	}
}
