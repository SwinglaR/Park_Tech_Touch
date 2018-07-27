package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.BookingContinuousPeriodVO;
import VO.ParkingProviderVO;
import VO.StateVO;

public class BookingContinuousPeriodDAO {
	public void insertContinuous(BookingContinuousPeriodVO bookingContinuousPeriodVO)
	{
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(bookingContinuousPeriodVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	public List searchContinuousPeriod(BookingContinuousPeriodVO bookingContinuousPeriodVO)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from BookingContinuousPeriodVO");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

	public List searchContinuousPeriodProvider(ParkingProviderVO parkingProviderVO)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from BookingContinuousPeriodVO where bookParkingSlotsVO.parkinglotsVO.parkingProviderVO='"+parkingProviderVO.getParkingprovider_id()+"' ");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public Boolean deleteContiBooking(BookingContinuousPeriodVO bookingContinuousPeriodVO) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.delete(bookingContinuousPeriodVO);
			
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
