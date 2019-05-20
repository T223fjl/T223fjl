<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>403</title>

   
  </head>

  <body class="nav-md">
    <script type="text/javascript">
   			 string url = "http://api.map.baidu.com/geocoder?address={0}&output=json&key=Z60o25qSRChjRBuFMBO5T705Bbv53cbC"

    	 //  var url = "http://api.map.baidu.com/geocoder?address={0}&output=json&key=key";
		    var request = (HttpWebRequest)WebRequest.Create(string.Format(url, "广州"));
		    var response = (HttpWebResponse)request.GetResponse();
		    var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();
		    JObject jo = (JObject)JsonConvert.DeserializeObject(responseString);
		    string lng = jo["result"]["location"]["lng"].ToString();
		    string lat = jo["result"]["location"]["lat"].ToString();
		    Response.Write(lng + "|" + lat);
    </script>
  </body>
</html>				
			