package com.doongie.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("hh:mm:ss"); 
		String dateTimeString = formatter.format(now);
		
		PrintWriter out = response.getWriter();		
		out.println("현재의 날짜는 "  + dateTimeString);
	}

}
