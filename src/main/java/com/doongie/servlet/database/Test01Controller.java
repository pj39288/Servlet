package com.doongie.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doongie.servlet.common.MysqlService;

public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		//접속
		mysqlService.connect();
		
		//쿼리작성
		/*
		 * String insertQuery = "INSERT INTO `real_estate` \r\n" +"(`realtorId"
		 */
	}

}
