package org.jmp.servlet2;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register2")
public class Register2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {

	}

	
	public void destroy() {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Enumeration<String> enu = request.getParameterNames();
		while(enu.hasMoreElements()) {
			String name = enu.nextElement();
			String[] values = request.getParameterValues(name);
			for(String value : values) {
				System.out.println("name= " + name + ", value= " + value);
			}
		}
	}

}
