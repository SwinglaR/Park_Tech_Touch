package DAO;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.BookingContinuousPeriodVO;


public class SearchDAO {
	
	public List search(BookingContinuousPeriodVO bookingContinuousPeriodVO)
	{
		List ls= null;
		try
		{
			 
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			Query w=session.createQuery("from BookingContinuousPeriodVO where start_date < '"+bookingContinuousPeriodVO.getStart_date()+"' and end_date >'"+bookingContinuousPeriodVO.getStart_date()+"'");
			
			System.out.println(w);
			ls=w.list();
			
			System.out.println(ls.size());
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	
	public List searchMulti(BookingContinuousPeriodVO bookingContinuousPeriodVO)
	{
		List ls= null;
		try
		{
			 
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			Query w=session.createQuery("from BookingMultiDateVO where start_date = '"+bookingContinuousPeriodVO.getStart_date()+"' ");
			
			System.out.println(w);
			ls=w.list();
			
			System.out.println(ls.size());
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}

}
