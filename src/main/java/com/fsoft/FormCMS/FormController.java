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

import com.fsoft.FormCMS.model.Form;
import com.fsoft.FormCMS.model.User;
import com.fsoft.FormCMS.services.FormService;

@RestController
public class FormController {
	@Autowired
	private FormService formservice;
	
//get Role of user to permit log to addForm Page
	@RequestMapping(value = "/addFormPage", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView addform(HttpServletRequest request,HttpSession session) {
		HttpSession s =request.getSession();
		User us=(User) s.getAttribute("user");
		if (us.getRole().equals("admin")) {
			return new ModelAndView("addform");
			}
		else {
			s.invalidate();
		return new ModelAndView("login");
	}}
	@RequestMapping(value = "/listForm", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public List<Form> getAllForm() {
		return formservice.listForm();
	}
	@RequestMapping(value = "/addForm", method = RequestMethod.POST, produces = { "application/json; charset=UTF-8" })
	@ResponseBody
	public void add(@RequestBody Form form) {
		formservice.add(form);
	}
	@RequestMapping(value = "/deleteForm/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public void delete(@PathVariable("id")Long id) {
		formservice.delete(id);
	}
	@RequestMapping(value = "/updateForm/{id}", method = RequestMethod.PUT, produces = {
	"application/json; charset=UTF-8" })
	@ResponseBody
	public void update(@PathVariable("id") Long id, @RequestBody Form form) {
		formservice.update(id, form);
	}
	@RequestMapping(value = "/student", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView studentPage() {
		return new ModelAndView("student-home");
	}
	@RequestMapping(value = "/test", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView test() {
		return new ModelAndView("test");
	}
}
