package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		System.out.println("action֮ǰִ�У�����");
		String url = request.getRequestURL().toString();
		System.out.println("url->"+url);
		int index = url.lastIndexOf('/');
		System.out.println("的点点滴滴:"+url.substring(index+1, url.length()));
		String action = url.substring(index+1, url.length());
		Object str =  request.getSession().getAttribute("loginUser");  
        System.out.println("str=========>"+str);  
        System.out.println(action.substring(action.indexOf('.')+1));
		if(action.equals("dologin")||str!=null||action.equals("login")
				||action.equals("register")||action.equals("sale.json")||
				action.equals("toIndex3")||action.equals("toIndex")||
				action.equals("toIndex2")||action.equals("logout")||
				action.equals("toIndexTwo")||action.equals("logout")||
				"json".equals(action.substring(action.indexOf('.')+1))){
			return true;  
		}
		response.sendRedirect("http://localhost:8080/FengYou/403.jsp");
		return false;
	}

}
