package com.fsoft.FormCMS.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fsoft.FormCMS.model.Form;

public interface FormDao extends JpaRepository<Form,Long> {

}
