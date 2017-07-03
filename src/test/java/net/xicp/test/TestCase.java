package net.xicp.test;

import java.util.Properties;

import net.xicp.a807966224.backs.daos.UsersDao;
import net.xicp.a807966224.backs.services.UsersService;

import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class TestCase {

	@Test
	public void test(){
		ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-configs.xml");
		Properties dbProps = applicationContext.getBean("dbProps", Properties.class);
		System.out.println(dbProps.get("ECHARTS_PATH_DEV"));
	}
}
