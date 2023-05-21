package tw.SeeIe.training;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SeeIe09")
public class SeeIe09 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet()");
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost()");
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String gender = request.getParameter("gender");
		String[] habits = request.getParameterValues("habits");
		System.out.println(account + " : " + passwd + " : " + gender);
		if (habits != null) {
			for (String hb : habits) {
				System.out.println(hb);
			}
		}

	}
}
