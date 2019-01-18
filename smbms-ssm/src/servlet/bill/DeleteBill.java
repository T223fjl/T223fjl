package servlet.bill;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.INTERNAL;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.Bill;
import service.BillService;

/**
 * Servlet implementation class DeleteBill
 */
@WebServlet("/DeleteBill")
public class DeleteBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBill() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8"); 
		request.setCharacterEncoding("utf-8"); 
		ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext-MyBatis.xml");
		BillService billService= (BillService)app.getBean("billService");
		String billid=request.getParameter("billid");
		int id=Integer.valueOf(billid);
		Bill bill=billService.queryByBillId(id);
		String json="";
		if(bill!=null){
			int delReult=billService.deleteBill(id);
			if(delReult>0){
				json="{'delResult':'true'}";
			}else{
				json="{'delResult':'false'}";
			}
		}else{
			json="{'delResult':'notexist'}";
		}
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
