package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.FaqCategoryVO;




public class FaqCategoryDAO {
	public void insert(FaqCategoryVO v)
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
	public List search(FaqCategoryVO v)
	{
		List ls= null;
	
		try
		{

			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			
			Session session =sessionFactory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			Query w=session.createQuery("from FaqCategoryVO");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public List edit(FaqCategoryVO v)
	{
		List ls=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			
			Session session=sessionFactory.openSession();
			
			Transaction tr=session.beginTransaction();
			
			Query w=session.createQuery("from FaqCategoryVO where category_id='"+v.getCategory_id()+"' ");
			
			ls=w.list();
			
			tr.commit();
		}
		catch(Exception z)
		{
			z.printStackTrace();
		}
		return ls;
	}
	public void update(FaqCategoryVO v)
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
		public boolean deleteFaqCategory(FaqCategoryVO faqCategoryVO)
		{
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				
				Session session=sessionFactory.openSession();
				
				Transaction tr=session.beginTransaction();
				
				session.delete(faqCategoryVO);
				
				
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
