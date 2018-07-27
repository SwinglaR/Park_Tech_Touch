package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.BookParkingSlotsVO;
import VO.FeedbackVO;
import VO.ParkinglotsVO;


public class BookParkingSlotsDAO {
	public void insertBookParkingSlots(BookParkingSlotsVO bookParkingSlotsVO)
	{
		try
		{
			System.out.println("in insert");
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(bookParkingSlotsVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
	
	public List ListCount(FeedbackVO feedbackVO) 
	{
		// TODO Auto-generated method stub
		List ls= null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			System.out.println("from ParkingslotsVO where Parkingslots_Id In ("+feedbackVO.getFeedback()+")");
			
			Query w=session.createQuery("select sum(bpark.fourWheeler),sum(bpark.twoWheeler),bpark.parkinglotsVO from BookParkingSlotsVO as bpark where bookParkingSlots_id In ("+feedbackVO.getFeedback()+") group by bpark.parkinglotsVO.parkinglots_id");
			
			ls=w.list();
			
			
			
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;

	}
}
