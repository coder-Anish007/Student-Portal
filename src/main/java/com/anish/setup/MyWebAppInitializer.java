package com.anish.setup;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyWebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	//provided AppConfig Class for Configuration of BeanDefination 
	protected Class<?>[] getServletConfigClasses() {
		return new Class<?>[] {AppConfig.class};
	}

	@Override
	//Adding the servlet mapping
	protected String[] getServletMappings() {
		return new String[] {"/app/*"};
	}
}
