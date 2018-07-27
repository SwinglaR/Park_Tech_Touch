package DAO;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.FaqCategoryVO;
import VO.FaqVO;
import VO.PackageVO;



public class FaqDAO {
	public void insert(FaqVO v)
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
	public List search(FaqVO v)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from FaqVO");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public List edit(FaqVO v)
	{
		List ls=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			Query w=session.createQuery("from FaqVO where faq_id='"+v.getFaq_id()+"' ");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public void update(FaqVO v)
	{
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			session.saveOrUpdate(v);
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
	}
		public boolean deleteFaq(FaqVO faqVO)
		{
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				
				Session session=sessionFactory.openSession();
				
				Transaction tr=session.beginTransaction();
				
				session.delete(faqVO);
				
				
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

