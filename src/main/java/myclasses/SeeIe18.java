package myclasses;

public class SeeIe18 {
	private int x, y;
	public SeeIe18(String x, String y) throws Exception{
		this.x =Integer.parseInt(x);
		this.y =Integer.parseInt(y);
	}
	public int plus() {
		return x+y;
	}
	public int minus() {
		return x-y;
	}
	public int time() {
		return x*y;
	}
//	private int[] divise() {
//		
//		return {(int)x/y, (int)x%y};
//	}
}
