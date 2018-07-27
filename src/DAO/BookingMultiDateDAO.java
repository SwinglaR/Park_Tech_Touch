package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.BookingContinuousPeriodVO;
import VO.BookingMultiDateVO;
import VO.ParkingProviderVO;

public class BookingMultiDateDAO {
	public void insertMultiDate(BookingMultiDateVO bookingMultiDateVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(bookingMultiDateVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	public List searchMultidate(BookingMultiDateVO bookingMultiDateVO)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from BookingMultiDateVO");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public List searchMultidateProvider(ParkingProviderVO parkingProviderVO)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from BookingMultiDateVO where bookParkingSlotsVO.parkinglotsVO.parkingProviderVO='"+parkingProviderVO.getParkingprovider_id()+"' ");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public boolean deleteMultiBooking(BookingMultiDateVO bookingMultiDateVO) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.delete(bookingMultiDateVO);
			
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
