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
		Object str =  request.getSession().getAttribute("userSession");  
		Object dev =  request.getSession().getAttribute("devUserSession");  
        System.out.println("str=========>"+str);  
        System.out.println(action.substring(action.indexOf('.')+1));
		if(action.equals("dologin")||str!=null||dev!=null||action.equals("login")
				||action.equals("login")||action.equals("checkCode")||action.equals("logout")||
				"json".equals(action.substring(action.indexOf('.')+1))){
			return true;  //继续执行action,不拦截登陆的方法。
		}
		response.sendRedirect("http://localhost:8080/appinfodb/403.jsp");
		return false;
	}

}
