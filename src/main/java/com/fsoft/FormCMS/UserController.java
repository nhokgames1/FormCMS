package com.fsoft.FormCMS;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fsoft.FormCMS.model.User;
import com.fsoft.FormCMS.services.UserService;

@RestController
public class UserController {
	@Autowired
	private UserService userservice;

	@RequestMapping(value = "/", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/home")
	@ResponseBody
	public ModelAndView home(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User usersession=(User) session.getAttribute("user");
		if (usersession.getRole().equals("admin")) {
			return new ModelAndView("redirect:/FormCMS/admin");
		}
						return new ModelAndView("redirect:/FormCMS/student");
		
	}
	@RequestMapping(value = "/admin", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView adminPage() {
		return new ModelAndView("adminPage");
	}

	@RequestMapping(value = "/listUser", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public List<User> getAllStudent() {
		return userservice.getAllUser();
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public void deleteUser(@PathVariable("id") Long id) {
		userservice.delete(id);
	}

	@RequestMapping(value = "/search/{name}", method = RequestMethod.GET, produces = {
			"application/json; charset=UTF-8" })
	@ResponseBody
	public User searchByName(@PathVariable("name") String account) {
		return userservice.getUserByName(account);
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST, produces = { "application/json; charset=UTF-8" })
	@ResponseBody
	public void addUser(@RequestBody User user) {
		userservice.add(user);
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.PUT, produces = {
			"application/json; charset=UTF-8" })
	@ResponseBody
	public void updateUser(@PathVariable("id") Long id, @RequestBody User user) {
		userservice.update(id, user);
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = { "application/json; charset=UTF-8" })
	@ResponseBody
	public boolean login(@RequestBody User user, HttpServletRequest request, HttpSession session) {
		if (userservice.login(user) == true) {
			HttpSession s = request.getSession();
			User usersession=userservice.getUserByName(user.getAccount());			
			s.setAttribute("user", usersession);	
			s.setAttribute("userName", usersession.getAccount());
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping(value = "/logout")
	@ResponseBody
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		HttpSession s = request.getSession();
		s.invalidate();
		return new ModelAndView("login");
	}
	@RequestMapping(value = "/sessionUser", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public User sessionUser(HttpServletRequest request) {
		HttpSession s =request.getSession();
		User usersession=(User) s.getAttribute("user");
		return usersession;
	}
}
