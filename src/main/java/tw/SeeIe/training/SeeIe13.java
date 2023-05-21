package tw.SeeIe.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SeeIe13")
public class SeeIe13 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("SeeIe14");
		
		request.setAttribute("name", "Kai");
		
		PrintWriter out = response.getWriter();
		out.print("<h1>SeeIe Big Company</h1>");
		dispatcher.include(request, response);
		out.print("<hr />");
		out.print("Hello, World");
		
	
	}
}
