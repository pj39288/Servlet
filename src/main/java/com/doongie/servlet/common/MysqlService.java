package com.doongie.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	// 접속주소, 아이디, 비밀번호 
	private String url = "jdbc:mysql://localhost:3306/doongie";
	private String userId = "root";
	private String password = "root";
	
	private Connection connection;
	private Statement statement;
	
	// 객체를 관리하는 메소드 
	public static MysqlService getInstance() {
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	private MysqlService() {
		
	}
	
	// 접속 기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	// select 쿼리 수행기능
	public ResultSet select(String query) {
		
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
	}
	
	// insert, update, delete 쿼리 수행기능
	public int update(String query) {
		// 실행된 행의 개수
		try {
			int count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return -1;
		}
		
	}
	
	
	
	// 접속 끊기
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	

}
