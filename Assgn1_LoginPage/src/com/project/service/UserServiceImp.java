package com.project.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.*;
import com.project.dao.*;

@Service
public class UserServiceImp implements UserService
{
	@Autowired
	private UserRepository userrep;
	
	@Override
	@Transactional
	public User getUser(String email,String pass) {
		return userrep.getUser(email,pass);
	}
}
