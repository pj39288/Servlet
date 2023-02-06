package com.doongie.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// �̸��� ������� ���޹ް�
		// �̸��� ���̸� html�� �����ش�. 
		response.setCharacterEncoding("utf-8");
		// response.setContentType("text/html");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 20011204
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2023 - year + 1;
		
		// out.println("<html><head><title>get method</title></head> <body>");
		
		// out.println("<h2>�̸� : " + name + "</h2>");
		
		// out.println("<h3>���� : " +  age + "</h3>");
		
		// out.println("</body></html>");
		
		// �̸��� ���̸� �����ͷ� response�� ��´�. 
		// {"name" : "���α�", "age": 22}
	
		
		out.println("{\"name\" : \"" + name + "\", \"age\": " + age + "}");
	}

}
