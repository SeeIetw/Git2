package tw.SeeIe.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myclasses.SeeIeUtils;

@WebServlet("/SeeIe19")
public class SeeIe19 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String x = (String)request.getAttribute("x");
		String y = (String)request.getAttribute("y");
		String result = (String)request.getAttribute("result");
//		System.out.println(x+" : "+y+" : "+result);
		String view = (String)request.getAttribute("view");
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		try {
			String content = SeeIeUtils.loadView(view);
			out.printf(content, view, x, y, result);
		} catch (Exception e) {
			try {
				String content = SeeIeUtils.loadView("view1");
				out.print(String.format(content, view, x, y, result));
			}catch(Exception e2) {
				System.out.println(e2);
			}
			out.print("oops! "+e);
		}
		
	}

}
