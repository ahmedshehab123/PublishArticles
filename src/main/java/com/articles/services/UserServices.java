package com.articles.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.articles.model.Users;
@Service
@Transactional
public class UserServices {
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager entityManager;
	
	
	//@Autowired
	// private SessionFactory sessionFactory;
      
	public void createUser(Users user){
		
		//sessionFactory.getCurrentSession().save(user);
		entityManager.persist(user);
		

		}
	public Users login(String email,String password){
		Users user=new Users();
		
		Query query = entityManager
				.createQuery("SELECT u FROM Users u WHERE u.email=:emailparam AND u.password=:passwordparam");
	    query.setParameter("emailparam", email);
	    query.setParameter("passwordparam", password);
	     user=(Users) query.getSingleResult();
		return user;
		
	}
   public List<Users> profileSettings(int userID){
	   
	   Query query = entityManager
				.createQuery("SELECT u FROM Users u WHERE u.id=:idparam ");
	    query.setParameter("idparam", userID);
	    @SuppressWarnings("unchecked")
		List<Users> users=query.getResultList();
	    return users;
	   
   }
   public void updateSettings(int userID,String email,String name,int age,String category  ){
	   
	  // Users user= (Users)entityManager.find(Users.class , userID);
	   entityManager
	       .createQuery("update Users set email='"+email+"',fullName = '"+name+"',"
	       		+ "category='"+category+"',age='"+age+"' where id="+userID+"")
	       .executeUpdate();
   }
}
