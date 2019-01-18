package servlet.bill;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.Bill;
import pojo.User;
import service.BillService;

/**
 * Servlet implementation class AddBill
 */
@WebServlet("/AddBill")
public class AddBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBill() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext-MyBatis.xml");
		BillService billService= (BillService)app.getBean("billService");
		String billCode=request.getParameter("billCode");
		String productName=request.getParameter("productName");
		String productUnit=request.getParameter("productUnit");
		String productCount=request.getParameter("productCount");
		String totalPrice=request.getParameter("totalPrice");
		String providerId=request.getParameter("providerId");
		String isPayment=request.getParameter("isPayment");
		System.out.println(isPayment);
		Bill bill=new Bill();
		User LoginUser=(User)request.getSession().getAttribute("LoginUser");
		bill.setBillCode(billCode);
		if(LoginUser==null){
			bill.setCreatedBy(1);
		}else{
			bill.setCreatedBy(LoginUser.getId());
		}
		bill.setIsPayment(Integer.valueOf(isPayment));
		bill.setProductCount(Integer.valueOf(productCount));
		bill.setProductName(productName);
		bill.setProductUnit(productUnit);
		bill.setTotalPrice(Integer.valueOf(totalPrice));
		bill.setProviderId(Integer.valueOf(providerId));
		int result=billService.addBill(bill);
		PrintWriter out = response.getWriter();
		if(result>0){
			out.print(" <script type='text/javascript'>alert('添加成功');location='QueryBill';</script>");
		}else{
			out.print(" <script type='text/javascript'>alert('添加失败');location='jsp/billadd.jsp';</script>");
		}
	}

}
