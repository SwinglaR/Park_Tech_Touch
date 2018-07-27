package DAO;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.AreaVO;
import VO.BookParkingSlotsVO;
import VO.CityVO;
import VO.ClientVO;
import VO.PackageVO;
import VO.StateVO;
import VO.LoginVO;
public class LoginDAO {
	
	
	public void insert(LoginVO loginVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(loginVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	public void update(LoginVO loginVO)
	{
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.saveOrUpdate(loginVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	public List authentication(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List list_of_user=new ArrayList();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			//session.save(loginVO);
			
			Query q=session.createQuery("from LoginVO where email='"+loginVO.getEmail()+"' and password='"+loginVO.getPassword()+"'");
		
			list_of_user=q.list();
				
				System.out.println("list size (no of user) :" +list_of_user.size());
				transaction.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return list_of_user;
	}
	public List searchEmail(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List searchEmail=new ArrayList();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			//session.save(loginVO);
			
			Query q=session.createQuery("from LoginVO where email='"+loginVO.getEmail()+"'");
				
			searchEmail=q.list();
			System.out.println("list size (no of user) :" +searchEmail.size());
			
				transaction.commit();
			}
		
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return searchEmail;
	}
	public List search(LoginVO loginVO) {
		// TODO Auto-generated method stub
		List search=new ArrayList();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			//session.save(loginVO);
			
			Query q=session.createQuery("from LoginVO where login_id='"+loginVO.getLogin_id()+"'");
				
			search=q.list();
			
			
				transaction.commit();
			}
		
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return search;
	}
	public void updatePassword(LoginVO loginVO)
	{
		try
		{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			System.out.println("dao");
			Query q = session.createQuery("update LoginVO set password='"+loginVO.getPassword()+"' where Email='"+loginVO.getEmail()+"'");
			q.executeUpdate();
			System.out.println("qqq");
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
}
	public List bookingChart(BookParkingSlotsVO bookParkingSlotsVO) {
		// TODO Auto-generated method stub
		List search=new ArrayList();
		try{
			
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			
			//session.save(loginVO);
//			Query q=session.createQuery("select bpark.parkinglotsVO,count(bpark.bookParkingSlots_id) from BookParkingSlotsVO as bpark group by bpark.parkinglotsVO.parkinglots_id");
			Query q=session.createSQLQuery("SELECT `Parkinglots_Name`,COUNT(`BookParkingSlots_Id`) FROM `bookingparkingslots`INNER JOIN `parkinglots` ON  parkinglots.`Parkinglots_Id` = bookingparkingslots.`Parkinglots_Id`GROUP BY `bookingparkingslots`.`Parkinglots_Id`;");


//			Query q=session.createQuery("from  where login_id='"+loginVO.getLogin_id()+"'");
				
			search=q.list();
			
			
				transaction.commit();
			}
		
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return search;
	
	}
	
}

