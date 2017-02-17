package com.fsoft.FormCMS;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.ComponentScan;



@ComponentScan
@EnableAutoConfiguration
@SpringBootApplication
public class FormCmsApplication {

	public static void main(String[] args) {
		SpringApplication.run(FormCmsApplication.class, args);
	}
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(FormCmsApplication.class);
	}
}
