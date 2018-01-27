package cn.wq.demo;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.wq.mapper.AdminLoginMapper;

import cn.wq.po.Administrator;
import cn.wq.serviceImput.AdminLoginServiceImput;


public class Demo {

	@Test
	public void demo(){
		ApplicationContext aContext=new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
		SqlSessionFactory sFactory= (SqlSessionFactory) aContext.getBean("sqlSessionFactory");
		
		SqlSession session=sFactory.openSession();
		
		System.out.println(session);	
	}
	@Test
	public void demo2(){
		ApplicationContext a=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		AdminLoginMapper adminLoginMapper=(AdminLoginMapper) a.getBean("adminLoginMapper");
		System.out.println(adminLoginMapper);
		Administrator administrator=adminLoginMapper.adminLogin("1");
		
	
	}
	//测试AdminLoginServiceImput是否注入spring中
	@Test
	public void demo3(){
		ApplicationContext a=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-service.xml");
		AdminLoginServiceImput adminLoginServiceImput=(AdminLoginServiceImput) a.getBean("adminLoginService");
		System.out.println(adminLoginServiceImput);
//		Administrator administrator=adminLoginServiceImput.adminLogin(1);
//		System.out.println(administrator);
	}
	//通过调用adminLoginMapper.adminLogin(acount)方法查询，如果有则返回，没有返回null
	@Test
	public void demo4(){
		ApplicationContext a=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		System.out.println(a);
		
		AdminLoginMapper adminLoginMapper= (AdminLoginMapper)a.getBean("adminLoginMapper");
		String  acount="201408114";
		Administrator administrator = adminLoginMapper.adminLogin(acount);
		System.out.println(administrator);
	}
}
