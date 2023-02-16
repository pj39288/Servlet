package com.doongie.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doongie.servlet.common.MysqlService;


@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");	
	
		PrintWriter out = response.getWriter();
		
		// used_goods 에 있는 모든 행을 html로 표현
		// MysqlService mysqlService = new MysqlService();
		MysqlService mysqlService = MysqlService.getInstance();
		// 접속
		mysqlService.connect();
		
		// 쿼리 수행
		ResultSet resultSet = mysqlService.select("SELECT * FROM `used_goods`;");
		
		
		
		// 데이터베이스 접속 필요
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 접속 주소, 아이디, 비밀번호
			String url = "jdbc:mysql://localhost:3306/doongie";
			String userId = "root";
			String password = "root";
			
			// 접속
			Connection connection = DriverManager.getConnection(url, userId, password);
			Statement statement = connection.createStatement();
			
			String selectQuery = "SELECT * FROM `used_goods`;";
			resultSet =  statement.executeQuery(selectQuery);
			
			out.println("<html><head><title>중고 목록</title></head><body>");
			
			// <div> 제목 : 플스 4 가격: 200000원 </div> 
			while(resultSet.next()) {
				
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div>제목 : " + title + "가격 : " + price + "</div>");
				
			}
			
			
			out.println("</body></html>");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
