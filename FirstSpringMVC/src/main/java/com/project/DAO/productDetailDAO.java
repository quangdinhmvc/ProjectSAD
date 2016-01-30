package com.project.DAO;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;




import com.project.utils.HibernateUtil;
import com.sad.entites.Productdetail;

public class productDetailDAO implements Serializable{
	public List<Productdetail> getProduct(){
		SessionFactory sf= HibernateUtil.getSessionFactory();
		Session session=sf.getCurrentSession();
		try{
			session.getTransaction().begin();
			
			String sql="SELECT  e FROM  Productdetail e";
			Query query=session.createQuery(sql);
			List<Productdetail> productdetail= (List<Productdetail>)query.list();
			if(productdetail!=null){
				session.getTransaction().commit();
				return productdetail;
			}
		}
			catch(Exception e){
				session.getTransaction().rollback();
			}
		
		return null;
	}
	public List<Productdetail> searchBrand(String brand){
		SessionFactory sf= HibernateUtil.getSessionFactory();
		Session session=sf.getCurrentSession();
		try{
			session.getTransaction().begin();
			
			String sql="SELECT  e FROM  Productdetail e WHERE e.brand=:brand";
			Query query=session.createQuery(sql);
			query.setParameter("brand",brand);
			
			List<Productdetail> productdetail= (List<Productdetail>)query.list();
			if(productdetail!=null){
				session.getTransaction().commit();
				return productdetail;
			}
		}
			catch(Exception e){
				session.getTransaction().rollback();
			}
		
		return null;
	}
	public Productdetail searchName(String name){
		SessionFactory sf= HibernateUtil.getSessionFactory();
		Session session=sf.getCurrentSession();
		try{
			session.getTransaction().begin();
			
			String sql="SELECT  e FROM  Productdetail e WHERE e.name=:name";
			Query query=session.createQuery(sql);
			query.setParameter("name",name);
			
			Productdetail productdetail= (Productdetail)query.uniqueResult();
			if(productdetail!=null){
				session.getTransaction().commit();
				return productdetail;
			}
		}
			catch(Exception e){
				session.getTransaction().rollback();
			}
		
		return null;
	}

}
