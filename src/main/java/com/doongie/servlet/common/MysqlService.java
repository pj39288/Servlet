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
	
	private Statement statement;
	private Connection connection;
	
	// 객체를 관리하는 메서드
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	// SELECT 쿼리 수행기능
	public ResultSet select(String query) {
		
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return null;
		}
	}
	
	// 접속 끊기
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
