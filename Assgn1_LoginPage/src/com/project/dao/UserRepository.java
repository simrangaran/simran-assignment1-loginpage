package com.project.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.entity.User;

@Repository
public class UserRepository 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public User getUser(String email,String pass) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		List<User> theUser = currentSession.createQuery("from User s where s.email= '" +email+ "'  AND s.password='"+pass+"'").getResultList();
		if(theUser.size()==1)
			return theUser.get(0);
		else		
			return null;
}
}