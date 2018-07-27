package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.FeedbackVO;
import VO.ParkingProviderVO;
import VO.ParkinglotsVO;

public class FeedbackDAO {

	public void insertFeedback(FeedbackVO feedbackVO) {
		// TODO Auto-generated method stub
	
		try
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(feedbackVO);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}

		
		
	}

	public List searchRatingforsearchview(ParkinglotsVO parkinglotsVO) {
		// TODO Auto-generated method stub
		List ls = null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Query w=session.createQuery("select avg(f.rating),f.parkinglotsVO.parkinglots_id from FeedbackVO f where parkinglotsVO.v.state_id='"+parkinglotsVO.getV().getState_id()+"' and parkinglotsVO.v1.city_id='"+parkinglotsVO.getV1().getCity_id()+"' and parkinglotsVO.v2.area_id='"+parkinglotsVO.getV2().getArea_id()+"' group by f.parkinglotsVO.parkinglots_id order by avg(f.rating) desc");
			
			ls=w.list();
			
			}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;

		
		
		
	
	
	}
	public List searchRating(ParkinglotsVO parkinglotsVO) {
		// TODO Auto-generated method stub
		List ls = null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Query w=session.createQuery("from FeedbackVO f where parkinglotsVO.v.state_id='"+parkinglotsVO.getV().getState_id()+"' and parkinglotsVO.v1.city_id='"+parkinglotsVO.getV1().getCity_id()+"' and parkinglotsVO.v2.area_id='"+parkinglotsVO.getV2().getArea_id()+"' group by f.parkinglotsVO.parkinglots_id order by avg(f.rating) desc");
			
			ls=w.list();
			
			}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;

		
		
		
	
	
	}

	public List searchFeedbackAndRatings(FeedbackVO feedbackVO) {
		// TODO Auto-generated method stub
		List feedbackAndRatingList= null;
		
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from FeedbackVO");
			
			feedbackAndRatingList=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return feedbackAndRatingList;
	}

	public List searchFeedbackAndRatingsPP(ParkingProviderVO parkingProviderVO) {
		// TODO Auto-generated method stub
		List feedbackAndRatingListPP=null;
		
		try 
		{
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session = sessionFactory.openSession();
			
			Query query = session.createQuery("from FeedbackVO where parkinglotsVO.parkingProviderVO="+parkingProviderVO.getParkingprovider_id());
			
			feedbackAndRatingListPP = query.list();
		} 
		catch (Exception exception) 
		{
			exception.printStackTrace();
		}
		return feedbackAndRatingListPP;
	}

	public boolean deleteFeedback(FeedbackVO feedbackVO) {
		// TODO Auto-generated method stub
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.delete(feedbackVO);
			
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

