package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;






import VO.LoginVO;
import VO.ParkingProviderVO;

public class ParkingProviderDAO {

	public void insertParkingProvider(ParkingProviderVO parkingProviderVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(parkingProviderVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	public void updateParkingProvider(ParkingProviderVO parkingProviderVO)
	{
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.saveOrUpdate(parkingProviderVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	
	public List searchParkingProvider(ParkingProviderVO parkingProviderVO)
	{
		List parkingProviderList= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from ParkingProviderVO");
			
			parkingProviderList=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return parkingProviderList;
	}
	public List searchSingleUser(LoginVO user) {
		// TODO Auto-generated method stub
		List parkingProviderList= null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from ParkingProviderVO where login_id='"+user.getLogin_id()+"'");
			
			parkingProviderList=w.list();
			
			tr.commit();
			
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return parkingProviderList;

	}
}
