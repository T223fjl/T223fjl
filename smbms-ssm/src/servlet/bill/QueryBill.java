package servlet.bill;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.Bill;
import pojo.Provider;
import service.BillService;
import service.ProviderService;
import util.Config;

/**
 * Servlet implementation class QueryBill
 */
@WebServlet("/QueryBill")
public class QueryBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryBill() {
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
		ProviderService providerService= (ProviderService)app.getBean("providerService");
		String method=request.getParameter("method");
		
		if("view".equals(method)){
			String billid=request.getParameter("billid");
			Bill bill=billService.queryByBillId(Integer.valueOf(billid));
			request.setAttribute("bill", bill);
			request.getRequestDispatcher("jsp/billview.jsp").forward(request, response);
		}
		if("".equals(method)||method==null){
			int currentPageNo=1;
			String queryProductName=request.getParameter("queryProductName");
			String queryProviderId=request.getParameter("queryProviderId");
			String queryIsPayment=request.getParameter("queryIsPayment");
			int queryProviderIdt=0;
			if(!"".equals(queryProviderId)&&queryProviderId!=null){
				queryProviderIdt= Integer.valueOf(queryProviderId);
			}
			int queryIsPaymentt=0;
			if(!"".equals(queryIsPayment)&&queryIsPayment!=null){
				queryIsPaymentt= Integer.valueOf(queryProviderId);
			}
			int totalCount=billService.queryBillByNameCount(queryProductName, queryProviderIdt,queryIsPaymentt,(currentPageNo-1)*Config.pageSize,Config.pageSize);
			int totalPageCount=totalCount%Config.pageSize==0?totalCount/Config.pageSize:totalCount/Config.pageSize+1;
			List<Bill> billList=billService.queryBillByName(queryProductName, queryProviderIdt,queryIsPaymentt,(currentPageNo-1)*Config.pageSize,Config.pageSize);
			List<Provider> providerList = providerService.queryProvider();
			request.setAttribute("billList", billList);
			request.setAttribute("queryProductName", queryProductName);
			request.setAttribute("queryProviderId", queryProviderId);
			request.setAttribute("queryIsPayment", queryIsPayment);
			request.getSession().setAttribute("providerList", providerList);
			
			request.getSession().setAttribute("totalPageCount", totalPageCount);
			request.getSession().setAttribute("totalCount", totalCount);
			request.getSession().setAttribute("currentPageNo", currentPageNo);
			request.getRequestDispatcher("jsp/billlist.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8"); 
		request.setCharacterEncoding("utf-8"); 
		ApplicationContext app=new ClassPathXmlApplicationContext("applicationContext-MyBatis.xml");
		BillService billService= (BillService)app.getBean("billService");
		ProviderService providerService= (ProviderService)app.getBean("providerService");
		String method=request.getParameter("method");
		if("query".equals(method)){
			int currentPageNo=1;
			String page=request.getParameter("pageIndex");
			if(page!=null){
				currentPageNo=Integer.valueOf(page);
			}
			String queryProductName=request.getParameter("queryProductName");
			String queryProviderId=request.getParameter("queryProviderId");
			String queryIsPayment=request.getParameter("queryIsPayment");
			int queryProviderIdt=0;
			if(!"".equals(queryProviderId)&&queryProviderId!=null){
				queryProviderIdt= Integer.valueOf(queryProviderId);
			}
			int queryIsPaymentt=0;
			if(!"".equals(queryIsPayment)&&queryIsPayment!=null){
				queryIsPaymentt= Integer.valueOf(queryIsPayment);
			}
			int totalCount=billService.queryBillByNameCount(queryProductName, queryProviderIdt,queryIsPaymentt,(currentPageNo-1)*Config.pageSize,Config.pageSize);
			int totalPageCount=totalCount%Config.pageSize==0?totalCount/Config.pageSize:totalCount/Config.pageSize+1;
			List<Bill> billList=billService.queryBillByName(queryProductName, queryProviderIdt,queryIsPaymentt,(currentPageNo-1)*Config.pageSize,Config.pageSize);
			List<Provider> providerList = providerService.queryProvider();
			request.setAttribute("billList", billList);
			request.setAttribute("queryProductName", queryProductName);
			request.setAttribute("queryProviderId", queryProviderId);
			request.setAttribute("queryIsPayment", queryIsPayment);
			request.getSession().setAttribute("providerList", providerList);
			
			request.getSession().setAttribute("totalPageCount", totalPageCount);
			request.getSession().setAttribute("totalCount", totalCount);
			request.getSession().setAttribute("currentPageNo", currentPageNo);
			request.getRequestDispatcher("jsp/billlist.jsp").forward(request, response);
		}
	}

}
