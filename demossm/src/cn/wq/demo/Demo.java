package cn.wq.demo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.wq.mapper.AdminLoginMapper;
import cn.wq.mapper.UniversityMapper;
import cn.wq.mapper.UserMapper;
import cn.wq.po.Administrator;

import cn.wq.po.User;
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
	/*
	 * 测试学校列表
	 */
	@Test
	public void demo5(){
		ApplicationContext a=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		AdminLoginMapper adminLoginMapper= (AdminLoginMapper)a.getBean("adminLoginMapper");
		List<Administrator> administrators=adminLoginMapper.adminList();
		for(Administrator administrator: administrators){
			System.out.println(administrator.getAdminAcount());
		}
	}
	/*
	 * 查询user列表
	 */
	@Test
	public void demo6(){
		
	}
	/*
	 * 插入user
	 */
	@Test
	public void demo7(){
		ApplicationContext a=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		UserMapper userMapper=(UserMapper) a.getBean("userMapper");
		User user=new User();
		user.setUserAcount("11111");
		user.setUserName("2222");
		user.setUserPassword("55555");
		user.setUserUniversity("99999");
		userMapper.addUser(user);
	}
	/*
	 * 添加学校店铺
	 */
	@Test
	public void addAdmin(){
		ApplicationContext a=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		AdminLoginMapper adminLoginMapper=(AdminLoginMapper)a.getBean("adminLoginMapper");
		Administrator administrator=new Administrator();
		administrator.setAdminAcount("2014081150");
		administrator.setAdminName("wq");
		administrator.setAdminPassword("2014081150");
		administrator.setPermission("低");
		administrator.setUniversity("清华大学");
//		administrator.setProvince("北京");
		try {
			int q=adminLoginMapper.addAdmin(administrator);
			System.out.println(q);
		} catch (Exception e) {
			System.out.println("添加失败");
		}
	
		
	}
	@Test
	public void universityList(){
		ApplicationContext a=new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
		UniversityMapper uMapper=(UniversityMapper) a.getBean("universityMapper");
		
		List<Administrator> universityList = uMapper.universityList();
		for(Administrator u:universityList){
			System.out.println(u.getProvince());
		}
	}
}