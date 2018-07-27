package DAO;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.CityVO;
import VO.ClientVO;
import VO.LoginVO;
import VO.ParkingProviderVO;
import VO.StateVO;

public class ClientDAO {
	public void updateClient(ClientVO clientVO)
	{
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.saveOrUpdate(clientVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	
	public List searchSingleUser(LoginVO user) {
		// TODO Auto-generated method stub
		List parkingProviderList= null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from ClientVO where login_id='"+user.getLogin_id()+"'");
			
			parkingProviderList=w.list();
			
			tr.commit();
			
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return parkingProviderList;

	}

	public void insert(ClientVO v)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(v);
			
			tr.commit();
				
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		
	}
	public List search(ClientVO v)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from ClientVO");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	
		
}

