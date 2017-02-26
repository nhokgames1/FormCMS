package com.fsoft.FormCMS;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fsoft.FormCMS.services.FormDataService;
import com.fsoft.FormCMS.model.*;

@RestController
public class DataFormController {
	@Autowired
	private FormDataService formdataservice;
	
	@RequestMapping(value = "/listFormData", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public List<DataForm> getAllDataForm() {
		return formdataservice.listFormData();
	}
	@RequestMapping(value = "/addFormData", method = RequestMethod.POST, produces = { "application/json; charset=UTF-8" })
	@ResponseBody
	public void add(@RequestBody DataForm df) {
		formdataservice.add(df);
	}
	@RequestMapping(value = "/deleteFormData/{id}", method = RequestMethod.DELETE)
	@ResponseBody
	public void delete(@PathVariable("id") Long id) {
		formdataservice.delete(id);
	}
	@RequestMapping(value = "/updateFormData/{id}", method = RequestMethod.PUT, produces = {
	"application/json; charset=UTF-8" })
	@ResponseBody
	public void update(@PathVariable("id") Long id, @RequestBody DataForm df){
			formdataservice.update(id, df);
	}
	@RequestMapping(value = "/data", method = RequestMethod.GET, produces = { "application/json;charset=UTF-8" })
	@ResponseBody
	public ModelAndView test() {
		return new ModelAndView("dataPage");
	}
}
