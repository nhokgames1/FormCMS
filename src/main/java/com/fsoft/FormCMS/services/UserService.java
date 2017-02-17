package com.fsoft.FormCMS.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fsoft.FormCMS.model.User;
import com.fsoft.FormCMS.dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao userdao;

	public List<User> getAllUser() {
		return userdao.findAll();
	}

	public void delete(Long id) {
		userdao.delete(id);
	}

	public void add(User user) {
		userdao.save(user);
	}

	public void update(Long id, User user) {
		User us = userdao.findOne(id);
		us.setAccount(user.getAccount());
		us.setFullname(user.getFullname());
		us.setBirthday(user.getBirthday());
		us.setRole(user.getRole());
		us.setPassword(user.getPassword());
		userdao.save(us);
	}

	public User getUserByName(String account) {
		return userdao.getUserByName(account);

	}

	public boolean login(User us) {
		boolean result = false;
		User use = userdao.getUserByName(us.getAccount());
		if (use != null) {
			if (use.getAccount().equals(use.getPassword())) {
				result = true;
			}
		}
		return result;

	}
}
