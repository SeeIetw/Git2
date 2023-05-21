package myclasses;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;

public class SeeIeUtils {
	
	public static String loadView(String view) throws Exception {
		String viewFile = String.format(
				"C:\\Users\\USER\\eclipse-workspace\\SeeIeWeb\\src\\main\\webapp\\view\\%s.html", view);
		BufferedReader reader = new BufferedReader(new FileReader(viewFile));
		StringBuffer sb = new StringBuffer();
		String line;
		while((line=reader.readLine())!=null){
			sb.append(line + "\n");
		}
		
		reader.close();
		return sb.toString();
	}
	
	
	
	
	public static String calc(String x, String y) {
		return calc(x, y, "1");
	}
	public static String calc(String x, String y, String op) {
		try {
		switch(op) {
			case "1": return ""+(Integer.parseInt(x)+Integer.parseInt(y)); 
			case "2": return ""+(Integer.parseInt(x)-Integer.parseInt(y)); 
			case "3": return ""+(Integer.parseInt(x)*Integer.parseInt(y)); 
			case "4": return 
					(Integer.parseInt(x)/Integer.parseInt(y)) + "..."
					+(Integer.parseInt(x)%Integer.parseInt(y)); 
		} 
		return "";
		} catch (Exception e) {
			return "";
		}
		
	}

	private static void Switch(String op) {
		// TODO Auto-generated method stub
		
	}
	
	
	public static String createScore() {
		return (int)(Math.random()*101)+"";
	}
	
	public static String prevPage(String page) {
		int pageInt = Integer.parseInt(page);
		if(pageInt>1) {
			pageInt--;
		}
		return ""+pageInt;
	}
	
	public static String nextPage(String page, String pages) {
		int pageInt = Integer.parseInt(page);
		int pagesInt = (int)Double.parseDouble(pages);
		if(pageInt<pagesInt) {
			pageInt++;
		}
		return ""+pageInt;
	}
	

	
}
