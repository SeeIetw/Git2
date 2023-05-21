package tw.SeeIe.training;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myclasses.SeeIe18;

@WebServlet("/SeeIe17")
public class SeeIe17 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//1.receive parameters
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String view = request.getParameter("view");
		
		//2.algorithm
		RequestDispatcher dispatcher = request.getRequestDispatcher(
				"SeeIe19");
		try {
			SeeIe18 seeie18 = new SeeIe18(x, y);
			int result = seeie18.plus();
			request.setAttribute("x", x);
			request.setAttribute("y", y);
			request.setAttribute("result", result+"");
			request.setAttribute("view", view==null?"view1":view);
			
		} catch (Exception e) {
			// if parameters have no values or wrong values(NOT int)
			System.out.println(e);
			request.setAttribute("view", view==null?"view1":view);
			request.setAttribute("x", "");
			request.setAttribute("y", "");
			request.setAttribute("result", "");
			
		}
		//3.display view
		dispatcher.forward(request, response);
		
	}
}
