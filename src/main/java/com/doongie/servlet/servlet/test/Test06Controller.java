package com.doongie.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));

		int plus = number1 + number2;
		int minus = number1 - number2;
		int multi = number1 * number2;
		int div = number1 / number2;
		
		// {"addition" : 10, "subtraction" : 5, "multipication" : 25, "division" : 2}
		
		out.println("{\"addition\" : " + plus 
				+ ", \"subtraction\" : " + minus 
				+ ", \"multipication\" : " + multi 
				+ ", \"division\" : " + div + " }");
		
		
	}

}
