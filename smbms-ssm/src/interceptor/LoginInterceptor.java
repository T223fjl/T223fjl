package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		System.out.println("action之前执行！！！");
		String url = request.getRequestURL().toString();
		System.out.println("url->"+url);
		int index = url.lastIndexOf('/');
		System.out.println("请求的方法是："+url.substring(index+1, url.length()));
		String action = url.substring(index+1, url.length());
		String str = (String) request.getSession().getAttribute("loginUser");  
        System.out.println("str=========>"+str);  
		if(action.equals("login.html")||str!=null){
			return true;  //继续执行action,不拦截登陆的方法。
		}
		response.sendRedirect("login.jsp");
		return false;
	}

}
