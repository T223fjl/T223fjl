package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {

	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		System.out.println("action֮");
		String url = request.getRequestURL().toString();
		System.out.println("url->" + url);
		int index = url.lastIndexOf('/');
		System.out.println("路径" + url.substring(index + 1, url.length()));
		String action = url.substring(index + 1, url.length());
		Object str = request.getSession().getAttribute("loginUser");
		Object dev = request.getSession().getAttribute("loginUser");
		System.out.println("str=========>" + str);
		System.out.println(action.substring(action.indexOf('.') + 1));
		if (action.equals("dologin") || str != null || dev != null || action.equals("login") || action.equals("login")
				|| action.equals("checkCode") 
				|| action.equals("backLogin")|| action.equals("logouts") 
				|| action.equals("find_Code") || action.equals("register") 
				|| action.equals("logout")|| action.equals("TimeOut")
				|| action.equals("toIndex")|| action.equals("toIndex2")
				|| action.equals("toIndex3")|| action.equals("addNote")
				|| action.equals("toIndexTwo")
				|| "json".equals(action.substring(action.lastIndexOf('.') + 1))
				|| "png".equals(action.substring(action.lastIndexOf('.') + 1))
				|| "jpg".equals(action.substring(action.lastIndexOf('.') + 1))
				|| "js".equals(action.substring(action.lastIndexOf('.') + 1))
				|| "css".equals(action.substring(action.lastIndexOf('.') + 1))
				|| "html".equals(action.substring(action.lastIndexOf('.') + 1))
				) {
			return true;
		}
		response.sendRedirect("http://localhost:8080/FengYou/403.jsp");
		return false;
	}

}
