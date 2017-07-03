package net.xicp.a807966224.backs.utils;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringUtils {

	private static ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-configs.xml");
	
	public static Object getBean(String beanId){
		return applicationContext.getBean(beanId);
	}
}
