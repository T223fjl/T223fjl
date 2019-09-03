package controller;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.developer.DeveloperHouseDao;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import pojo.Order;
import service.developer.DeveloperHouseService;

public class Test {

	/*
	 * public static void main(String[] args) throws UnknownHostException { //
	 * 获取IP地址 String ip = InetAddress.getLocalHost().getHostAddress(); // 获取计算机名
	 * String name = InetAddress.getLocalHost().getHostName(); //打印
	 * System.out.println("IP地址："+ip); System.err.println("计算机名："+name); }
	 */

	/**
	 * 将字符串转移为ASCII码
	 * 
	 * @param cnStr
	 * @return
	 */
	public static String getCnASCII(String cnStr) {
		StringBuffer strBuf = new StringBuffer();
		byte[] bGBK = cnStr.getBytes();
		for (int i = 0; i < bGBK.length; i++) {
			// System.out.println(Integer.toHexString(bGBK[i]&0xff));
			strBuf.append(Integer.toHexString(bGBK[i] & 0xff));
		}
		return strBuf.toString();
	}

	public static void main(String[] args) {

		ClassPathXmlApplicationContext c = new ClassPathXmlApplicationContext("applicationContext-MyBatis.xml");
		DeveloperHouseDao hdao = (DeveloperHouseDao) c.getBean("houseDao");
		DeveloperHouseService h = (DeveloperHouseService) c.getBean("houseService");
		Order order = new Order();
		String checkInDate = "2019-5-25";
		String checkOutDate = "2019-5-26";
		order.setCheckInDate(java.sql.Date.valueOf(checkInDate));
		order.setCheckOutDate(java.sql.Date.valueOf(checkOutDate));
		order.setHouseId(1);
		// h.queryHouseByDate(order);

		/*
		 * String cnStr = "北京"; System.out.println(getCnASCII(cnStr));
		 */

		/*
		 * String url =
		 * "http://api.map.baidu.com/geocoder?address={0}&output=json&key=key";
		 * HttpServletRequest request =
		 * (HttpServletRequest)request(string.Format(url, "广州"));
		 * HttpServletResponse response =
		 * (HttpServletResponse)request.GetResponse(); var responseString = new
		 * StreamReader(response.GetResponseStream()).ReadToEnd(); JObject jo =
		 * (JObject)JsonConvert.DeserializeObject(responseString); string lng =
		 * jo["result"]["location"]["lng"].ToString(); string lat =
		 * jo["result"]["location"]["lat"].ToString(); Response.Write(lng + "|"
		 * + lat);
		 */

	}

	/**
	 * 得到 全拼
	 * 
	 * @param src
	 * @return
	 */
	public static String getPingYin(String src) {
		char[] t1 = null;
		t1 = src.toCharArray();
		String[] t2 = new String[t1.length];
		HanyuPinyinOutputFormat t3 = new HanyuPinyinOutputFormat();
		t3.setCaseType(HanyuPinyinCaseType.LOWERCASE);
		t3.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
		t3.setVCharType(HanyuPinyinVCharType.WITH_V);
		String t4 = "";
		int t0 = t1.length;
		try {
			for (int i = 0; i < t0; i++) {
				// 判断是否为汉字字符
				if (java.lang.Character.toString(t1[i]).matches("[\\u4E00-\\u9FA5]+")) {
					t2 = PinyinHelper.toHanyuPinyinStringArray(t1[i], t3);
					t4 += t2[0];
				} else {
					t4 += java.lang.Character.toString(t1[i]);
				}
			}
			return t4;
		} catch (BadHanyuPinyinOutputFormatCombination e1) {
			e1.printStackTrace();
		}
		return t4;
	}

}
