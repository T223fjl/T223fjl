import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class trse {
	public static void main(String[] args) {
		int a=10;
		int c=9;
		int s=a&(c);
		System.out.println(s+"  "+c%a+"  "+c/a);
		
		String f=new String("java");
		replace(f);
		System.out.println(f);
		StringBuffer b=new StringBuffer("java");
		append(b);
		System.out.println(b.toString());
	}

	public static String fa(String str) {
		String[] s = str.split("");
		StringBuilder f = new StringBuilder();
		for (int i = s.length; i > 0; i--) {
			f.append(s[i - 1]);
		}
		return f.toString();
	}

	public static void replace(String str) {
		str=str.replace("j", "I");
	}

	public static void append(StringBuffer str) {
		str=str.append("c");
	}
}
