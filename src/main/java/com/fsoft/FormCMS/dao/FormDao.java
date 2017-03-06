package com.fsoft.FormCMS.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.fsoft.FormCMS.model.Form;

public interface FormDao extends JpaRepository<Form,Long> {
	@Query("from Form f where f.username=:username")
	public List<Form>  getFormByUsername(@Param("username") String username);
}
