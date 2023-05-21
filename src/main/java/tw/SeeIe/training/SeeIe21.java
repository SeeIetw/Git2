package tw.SeeIe.training;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageOutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SeeIe21")
public class SeeIe21 extends HttpServlet {
	String source = "C:\\Users\\USER\\eclipse-workspace\\Demo\\dir1\\garbage.jpg";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			BufferedImage img = ImageIO.read(new File(source));
			Graphics2D g2d = img.createGraphics();
			g2d.setColor(Color.black);
			AffineTransform tran = new AffineTransform();
			tran.rotate(Math.toRadians(30));
			Font font = new Font(null, Font.BOLD + Font.ITALIC, 36);
			Font font2 = font.deriveFont(tran);
			g2d.setFont(font2);
			g2d.drawString("Hello, World", 10, 100);
			
//			response.setContentType("image/jpeg");
//			OutputStream out = response.getOutputStream();
			
//			ImageIO.write(img, "jpeg", out);
//			response.flushBuffer();
			FileImageOutputStream fiout = new FileImageOutputStream(new File("C:\\Users\\USER\\eclipse-workspace\\Demo\\dir2\\111.jpeg"));
			ImageIO.write(img, "jpeg", fiout);
			
		}
	}

