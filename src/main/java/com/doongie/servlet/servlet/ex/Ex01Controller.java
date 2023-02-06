package com.doongie.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		// response header ����
		// ĳ���� ��
		response .setCharacterEncoding("utf-8");
		// ������ Ÿ�� (MIME)
		response.setContentType("text/plain");
		
		// ��¥ ǥ���ϱ�
		// ���� ��¥ �ð��� 2023-02-01 17:31:12
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
		String dateTimeString = formatter.format(now);
		
		// response�� �� ä���
		PrintWriter out = response.getWriter();
		
		out.println(now);
		out.println(dateTimeString);
		
		
		
	}
}
