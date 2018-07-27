package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;









import VO.AreaVO;
import VO.CityVO;
import VO.ParkingProviderVO;
import VO.ParkinglotsVO;
import VO.StateVO;


public class ParkinglotsDAO {
	public void insert(ParkinglotsVO v)
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
	public List<ParkinglotsVO> searchLot(ParkinglotsVO v)
	{
		List<ParkinglotsVO> ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Query w=session.createQuery("from ParkinglotsVO where State_Id='"+v.getV().getState_id()+"' and City_Id='"+v.getV1().getCity_id()+"' and Area_Id='"+v.getV2().getArea_id()+"'");
			
			ls=(List<ParkinglotsVO>)w.list();
			
			System.out.println("List Parking Size :   >> "+ls.size());
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public List recommendationLot(AreaVO areaVO)
	{
		List recommendationList = null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Query w=session.createQuery("from ParkinglotsVO where Area_Id='"+areaVO.getArea_id()+"'");
			
			recommendationList=(List<ParkinglotsVO>)w.list();
			
		
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return recommendationList;
	}

	public List search(ParkinglotsVO v)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from ParkinglotsVO");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public List edit(ParkinglotsVO parkinglotsVO) {
		// TODO Auto-generated method stub
		List ls= null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from ParkinglotsVO where Parkinglots_Id='"+parkinglotsVO.getParkinglots_id()+"' ");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public void update(ParkinglotsVO v)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.saveOrUpdate(v);
			
			tr.commit();
			
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	
	public List loadCity(StateVO stateVO) 
	{
		// TODO Auto-generated method stub
		List ls = null;
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session = sessionFactory.openSession();
			
			Query query = session.createQuery("from CityVO where State_Id="+stateVO.getState_id());
			
			ls = query.list();
		} 
		catch (Exception exception) 
		{
			exception.printStackTrace();
		}
		return ls;
	}
	
	public List loadArea(CityVO cityVO) 
	{
		// TODO Auto-generated method stub
	List ls=null;
	try 
	{
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		
		Session session = sessionFactory.openSession();
		
		Query query = session.createQuery("from AreaVO where City_Id="+cityVO.getCity_id());
		
		ls = query.list();
	} 
	catch (Exception exception) 
	{
		exception.printStackTrace();
	}
	return ls;
	}
	public List selectLot(ParkinglotsVO parkinglotsVO) {
		// TODO Auto-generated method stub
		List ls=null;
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session = sessionFactory.openSession();
			
			Query query = session.createQuery("from ParkinglotsVO where parkinglots_id="+parkinglotsVO.getParkinglots_id());
			
			ls = query.list();
		} 
		catch (Exception exception) 
		{
			exception.printStackTrace();
		}
		return ls;

	}
	public List searchParkingProviderLots(ParkingProviderVO parkingProviderVO) {
		// TODO Auto-generated method stub
		List ls=null;
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session = sessionFactory.openSession();
			
			Query query = session.createQuery("from ParkinglotsVO where parkingProviderVO="+parkingProviderVO.getParkingprovider_id());
			
			ls = query.list();
		} 
		catch (Exception exception) 
		{
			exception.printStackTrace();
		}
		return ls;
	}
	public List listMarker(AreaVO areaVO)
	{
		List recommendationList = null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Query w=session.createQuery("from ParkinglotsVO where Area_Id='"+areaVO.getArea_id()+"'");
			
			recommendationList=w.list();
			
		
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return recommendationList;
	}
	public List searchParkingProvider(ParkingProviderVO parkingProviderVO) {
		// TODO Auto-generated method stub
		List ls= null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from ParkinglotsVO where parkingProviderVO='"+parkingProviderVO.getParkingprovider_id()+"' ");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;

	}



public boolean deleteLot(ParkinglotsVO parkinglotsVO)
{
	try
	{
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		
		Session session=sessionFactory.openSession();
		
		Transaction tr=session.beginTransaction();
		
		session.delete(parkinglotsVO);
		
		
		tr.commit();
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
		
		 String s[] = ex.getCause()!=null?ex.getCause().toString().split(":"):null;
			
			if(s!=null && s[0].equals("java.sql.BatchUpdateException")){
			
			return false;
	}
}
	return true;
}
}