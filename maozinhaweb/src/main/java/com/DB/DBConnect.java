package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://localhost:3306/maozinha";
	private static final String DB_USERNAME = "root";
	private static final String DB_PASSWORD = "root";

	private static Connection conn;
	
	public static Connection getConn() {
		
		try {
			Class.forName(DB_DRIVER);
			conn = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
		
	}
	
	
}