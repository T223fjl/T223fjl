package test;

import redis.clients.jedis.Jedis;

public class RedisTest {
	public static void main(String[] args) {
		Jedis jedis = new Jedis("127.0.0.1", 6379);//ָ��Redis����Host��port 
		//jedis.auth("123456"); //���Redis����������Ҫ����,�ƶ����� 
		jedis.connect();//����
		System.out.println("redis�������ӳɹ���");
		//fadf
		
		
		//jedis����ֵ
		jedis.set("zhangsan","����");
		String value = jedis.get("zhangsan");
		System.out.println(value);
	}
}
