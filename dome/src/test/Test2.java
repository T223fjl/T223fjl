package test;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Enumeration;
import java.util.Vector;
/**
 * 序列
 * @author fjl
 *
 */
public class Test2 {
	 public static void main(String [] args)
	   {
		 noser();
	   }
	 //序列化
	 public static void ser(){
		 Employee e = new Employee();
	      e.name = "Reyan Ali";
	      e.number = 101;
	      try
	      {
	         FileOutputStream fileOut =
	         new FileOutputStream("D:/employee.ser");
	         ObjectOutputStream out = new ObjectOutputStream(fileOut);
	         out.writeObject(e);
	         out.close();
	         fileOut.close();
	         System.out.printf("Serialized data is saved in /tmp/employee.ser");
	      }catch(IOException i)
	      {
	          i.printStackTrace();
	      }
	 }
	//序列化
		 public static void noser(){
			 Employee e = null;
		      try
		      {
		         FileInputStream fileIn = new FileInputStream("D:/employee.ser");
		         ObjectInputStream in = new ObjectInputStream(fileIn);
		         e = (Employee) in.readObject();
		         in.close();
		         fileIn.close();
		      }catch(IOException i)
		      {
		         i.printStackTrace();
		         return;
		      }catch(ClassNotFoundException c)
		      {
		         System.out.println("Employee class not found");
		         c.printStackTrace();
		         return;
		      }
		      System.out.println("Deserialized Employee...");
		      System.out.println("Name: " + e.name);
		      System.out.println("Number: " + e.number);
		    }
		 
}
