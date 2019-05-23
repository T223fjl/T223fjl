package util;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.JSON;

/**
 * 这个用于转换json的工具类
 * 
 *
 */
public class ConvertJSONUtil {

	/**
	 * 用于转换成json格式 lgs
	 */
	public static void toJSON(Object object, HttpServletResponse resp) {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = null;
		try {
			out = resp.getWriter();
			String json = JSON.toJSONString(object);
			// 输出json格式
			out.write(json);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			out.flush();
			out.close();
		}
	}

	
	/**
	 * 打印字符串
	 * @param str
	 * @param resp
	 */
	public static void toText(String str, HttpServletResponse resp) {
		PrintWriter out = null;
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		try {
			out = resp.getWriter();
			// 输出字符串格式
			out.write(str);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			out.flush();
			out.close();
		}
	}
}
