package tw.SeeIe.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myclasses.Bike;

@WebServlet("/SeeIe15")
public class SeeIe15 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("SeeIe16");
		
		Bike b1 = new Bike();
		b1.upSpeed();
		b1.upSpeed();
		b1.upSpeed();
		b1.upSpeed();
		request.setAttribute("b1", b1);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>SeeIe Big Company</h1>");
		out.print("<hr />");
		dispatcher.forward(request, response);
		out.print("Hello, World");
	}

}
