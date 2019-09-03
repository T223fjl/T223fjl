package util;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;

public class AliyunSMS {
	private static String accessKey = "LTAIufThkS1t03Lh";
	private static String accessSecret = "vnFbMlUoq823mErlEPkx2e8bMGbDJd";

	public static String Sms(String phone) {
		int yzm = (int) ((Math.random() * 9 + 1) * 100000);
		DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKey, accessSecret);
		IAcsClient client = new DefaultAcsClient(profile);

		CommonRequest request = new CommonRequest();
		// request.setProtocol(ProtocolType.HTTPS);
		request.setMethod(MethodType.POST);
		request.setDomain("dysmsapi.aliyuncs.com");
		request.setVersion("2017-05-25");
		request.setAction("SendSms");
		request.putQueryParameter("RegionId", "cn-hangzhou");
		request.putQueryParameter("PhoneNumbers", phone);
		request.putQueryParameter("SignName", "风游旅行");
		request.putQueryParameter("TemplateCode", "SMS_165676473");
		request.putQueryParameter("TemplateParam", "{\"code\":\"" + String.valueOf(yzm) + "\"}");
		try {
			CommonResponse response = client.getCommonResponse(request);
			System.out.println(response.getData());
		} catch (ServerException e) {
			e.printStackTrace();
		} catch (ClientException e) {
			e.printStackTrace();
		}
		System.out.println(yzm);
		return String.valueOf(yzm);
	}

	public static void main(String[] args) {
		AliyunSMS.Sms("13873567018");
	}

}
