package com.fsoft.FormCMS.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fsoft.FormCMS.dao.DataFormDao;
import com.fsoft.FormCMS.model.DataForm;

@Service
public class FormDataService {
	@Autowired
	private DataFormDao dataformdao;
	
	public List<DataForm> listFormData() {
		return dataformdao.findAll();
	}
	public void add(DataForm df) {
		dataformdao.save(df);
	}
	public void delete(Long id){
		dataformdao.delete(id);
	}
	public void update(Long id ,DataForm df) {
		DataForm d = dataformdao.findOne(id);
		d.setFormData(df.getFormData());
		d.setUser(df.getUser());
		dataformdao.save(d);
	}
}
