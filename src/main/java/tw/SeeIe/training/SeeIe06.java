package tw.SeeIe.training;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SeeIe06")
public class SeeIe06 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> params = request.getParameterNames();
		while(params.hasMoreElements()) {
			String param = params.nextElement();
			String value = request.getParameter(param);
			System.out.println(param +" : "+ value);
		}
	}
}
