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
		
		//getCookies()가 쿠키 정보를 가져오는 메서드이다.
		Cookie[] values = request.getCookies();
		for(int i = 0; i<values.length; i++) {
			if(values[i].getName().equals("cookieTest")) {		//getName()는 쿠키이름을 가져는 메서드
				out.println("<h3>Cookie 값 가져오기 : " + URLDecoder.decode(values[i].getValue(),"utf-8"));
				//getValue()는 쿠키 값을 가져오는 메서드
			}
		}
	}

}
