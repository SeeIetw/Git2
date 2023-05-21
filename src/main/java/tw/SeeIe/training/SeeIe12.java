package tw.SeeIe.training;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SeeIe12
 */
@WebServlet("/SeeIe12")
public class SeeIe12 extends HttpServlet {

    public SeeIe12() {
        System.out.println("SeeIe12");
    }
    
	@Override
	public void init() throws ServletException {
		super.init();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.service(req, resp);
		//do next service
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		super.service(req, res);
		//check doGet/doPost from request
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
	}
}
