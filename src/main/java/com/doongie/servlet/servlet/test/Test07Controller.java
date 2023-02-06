package com.doongie.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		out.println("<html><head><title></title></head><body>");
		
		if(!address.contains("서울시")) {
			out.println("배달불가 지역입니다");	
		} else if(card.contains("신한카드")) {
			out.println("결제불가 카드입니다");
		} else {			
			out.println(address + "로 배달준비중 <hr>");
			out.println("결제금액 : " + price +"원");
		}
		
		out.println("</body></html>");

		
		
	}

}
