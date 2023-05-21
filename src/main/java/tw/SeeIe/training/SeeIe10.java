package tw.SeeIe.training;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.text.html.HTMLDocument.Iterator;

@WebServlet("/SeeIe10")
@MultipartConfig(
		location = "C:\\Users\\USER\\eclipse-workspace\\SeeIeWeb\\src\\main\\webapp\\upload"
		)
public class SeeIe10 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part upload = request.getPart("upload");
		System.out.println("Size: "+upload.getSize());
		System.out.println("Type: "+upload.getContentType());
		System.out.println("Fname: "+upload.getSubmittedFileName());
		
		upload.write(upload.getSubmittedFileName());
		
	}
}
