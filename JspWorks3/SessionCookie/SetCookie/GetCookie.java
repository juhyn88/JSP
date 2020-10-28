package SetCookie;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/get")
public class GetCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//getCookies()�� ��Ű ������ �������� �޼����̴�.
		Cookie[] values = request.getCookies();
		for(int i = 0; i<values.length; i++) {
			if(values[i].getName().equals("cookieTest")) {		//getName()�� ��Ű�̸��� ������ �޼���
				out.println("<h3>Cookie �� �������� : " + URLDecoder.decode(values[i].getValue(),"utf-8"));
				//getValue()�� ��Ű ���� �������� �޼���
			}
		}
	}

}
