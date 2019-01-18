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
 * Servlet implementation class UpdateBill
 */
@WebServlet("/UpdateBill")
public class UpdateBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBill() {
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
		Bill bill=billService.queryByBillId(Integer.valueOf(billid));
		request.setAttribute("bill", bill);
		request.getRequestDispatcher("jsp/billmodify.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8"); 
		request.setCharacterEncoding("utf-8"); 
		ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext-MyBatis.xml");
		BillService billService= (BillService)app.getBean("billService");
		String id=request.getParameter("id");
		Bill bill=new Bill();
		bill.setId(Integer.valueOf(id));
		String billCode=request.getParameter("billCode");
		String productName=request.getParameter("productName");
		String productUnit=request.getParameter("productUnit");
		String productCount=request.getParameter("productCount");
		String totalPrice=request.getParameter("totalPrice");
		String providerId=request.getParameter("providerId");
		String isPayment=request.getParameter("isPaymen");
		bill.setBillCode(billCode);
		bill.setIsPayment(Integer.valueOf(isPayment));
		bill.setProductCount(Double.valueOf(productCount));
		bill.setProductName(productName);
		bill.setProductUnit(productUnit);
		bill.setTotalPrice(Double.valueOf(totalPrice));
		bill.setProviderId(Integer.valueOf(providerId));
		User LoginUser=(User)request.getSession().getAttribute("LoginUser");
		if(LoginUser==null){
			bill.setModifyBy(1);
		}else{
			bill.setModifyBy(LoginUser.getId());
		}
		int result=billService.updateBill(bill);
		PrintWriter out = response.getWriter();
		if(result>0){
			out.print(" <script type='text/javascript'>alert('修改成功');location='QueryBill';</script>");
		}else{
			out.print(" <script type='text/javascript'>alert('修改失败');location='jsp/billmodify.jsp';</script>");
		}
	}

}
