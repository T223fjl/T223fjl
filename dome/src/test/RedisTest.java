package test;

import redis.clients.jedis.Jedis;

public class RedisTest {
	public static void main(String[] args) {
		Jedis jedis = new Jedis("127.0.0.1", 6379);//指定Redis服务Host和port 
		//jedis.auth("123456"); //如果Redis服务连接需要密码,制定密码 
		jedis.connect();//连接
		System.out.println("redis服务连接成功。");
		//fadf
		
		
		//jedis设置值
		jedis.set("zhangsan","张三");
		String value = jedis.get("zhangsan");
		System.out.println(value);
	}
}
