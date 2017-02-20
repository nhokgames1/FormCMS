package com.fsoft.FormCMS.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fsoft.FormCMS.dao.FormDao;
import com.fsoft.FormCMS.model.Form;;

@Service
public class FormService {
	@Autowired
	private FormDao formdao;
	
	public List<Form> listForm() {
		return formdao.findAll();
	}
	public void add(Form form){
		formdao.save(form);
	}
	public void delete(Long id) {
		formdao.delete(id);
	}
	public void update(Long id,Form form) {
		Form f =  formdao.findOne(id);
		f.setName(form.getName());
		f.setFormdata(form.getFormdata());
		formdao.save(form);
		
	}
	
}
