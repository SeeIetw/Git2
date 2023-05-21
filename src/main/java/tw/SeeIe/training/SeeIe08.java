package tw.SeeIe.training;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SeeIe08")
public class SeeIe08 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		String result = "";
		try {
			
			switch (op) {
			case "1": {
				result = ""+(Integer.parseInt(x)+Integer.parseInt(y));
				break;
			}
			case "2": {
				result = ""+(Integer.parseInt(x)-Integer.parseInt(y));
				break;
			}
			case "3": {
				result = ""+(Integer.parseInt(x)*Integer.parseInt(y));
				break;
			}
			case "4": {
				result = (Integer.parseInt(x)/Integer.parseInt(y))+" : "+(Integer.parseInt(x)%Integer.parseInt(y));
				break;
			}
			default:
				break;
			}
			
		} catch (Exception e) {
			x = y = "";
		}

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.append("<form>")
		.append(String.format("<input name='x' value='%s'/>\n", x))
		.append("<select name='op' value=''>")
		.append("<option value='1'>+</option>")
		.append("<option value='2'>-</option>")
		.append("<option value='3'>x</option>")
		.append("<option value='4'>/</option>")
		.append("</select>")
		.append(String.format(" <input name='y' value='%s'/>\n", y))
		.append("<input type='submit' value='='>")
		.append(" "+result)
		.append("</form>");
	}
}
