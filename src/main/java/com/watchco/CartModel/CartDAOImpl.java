package com.watchco.CartModel;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.watchco.ProductModel.Product;

@Repository
@EnableTransactionManagement
public class CartDAOImpl implements CartDAO
{

	@Autowired
	private SessionFactory sessionFactory;
 
	public SessionFactory getSessionFactory() {
		return sessionFactory.getCurrentSession().getSessionFactory();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public Cart getCartById(int cartId) {
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where ID = :id").setInteger("id", cartId).list();
		
		if( l.size() > 0 )
			return (Cart)l.get(0);
		else
			return null;
		
	}

	public void update(Cart cart) {
		sessionFactory.getCurrentSession().update(cart);
	}

	public void add(Cart cart)
	{
		sessionFactory.getCurrentSession().save(cart);
	}

	public void delete(int p) {
		sessionFactory.getCurrentSession().createQuery("delete from Cart as p where p.ID = :id").setInteger("id", p).executeUpdate();
	}

	public void deleteByProductId(int pid) {
		sessionFactory.getCurrentSession().createQuery("delete from Cart as p where p.ProductId = :id").setInteger("id", pid).executeUpdate();
	}

	public List<Cart> getAllProducts() {
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	public Cart getCartByUsername(String Username) {
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where Username = :Username").setString("Username", Username).list();
		
		if( l.size() > 0 )
			return (Cart)l.get(0);
		else
			return null;
	}

	public String checkUsername(String Username){
		List l = sessionFactory.getCurrentSession().createQuery("from Cart where Username = :Username").setString("Username", Username).list();
		
		if( l.size() == 0 )
			return "success";
		else
			return "failure";
	}

	public List<Cart> getAllProduct() {
		// TODO Auto-generated method stub
		return null;
	}
	

}