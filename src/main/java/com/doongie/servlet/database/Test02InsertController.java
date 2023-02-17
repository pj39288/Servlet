package com.doongie.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doongie.servlet.common.MysqlService;

@WebServlet("/database/test02/insert")
public class Test02InsertController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `bookmark` \r\n"
				+ "(`name`, `url`,`createdAt`, `updatedAt`)\r\n"
				+ "VALUES ('" + name + "', '" + url + "', now(), now() );";
		
		int count = mysqlService.update(query);
		
		out.println("수행 결과 : " + count);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test02.jsp");


	}

}
