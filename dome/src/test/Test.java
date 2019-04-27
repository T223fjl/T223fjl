package test;

import java.util.ArrayList;
import java.util.List;

public class Test {
	public static void main(String[] args) {
		
		String s="abcde";
		//fang(s);
		f();
	}
	public static void fang(String f) {
		f.substring(0);
		String ss="";
		for (int i = f.length(); i >0 ; i--) {
			ss=ss+f.substring(i-1, i);
		}
		System.out.println(ss);
	}
	public static void f() {
		for (int i = 10; i < 100; i++) {
			for (int j = 10; j < 100; j++) {
				int a=i/10;
				int b=i%10;
				int c=j/10;
				int d=j%10;
				int e=(i+j)/10;
				int f=(i+j)%10;
				if(a!=b&&a!=c&&a!=d&&a!=e&&a!=f&&
						b!=c&&b!=d&&b!=e&&b!=f&&
						c!=d&&c!=e&&c!=f&&
						d!=e&&d!=f&&e!=f
						&&(i+j)<100){
					System.out.println(i+"+"+j+"="+(i+j));
				}
			}
		}
		
	}
}
