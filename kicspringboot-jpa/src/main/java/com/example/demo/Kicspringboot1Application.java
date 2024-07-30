package com.example.demo;

import java.util.Collections;

import org.apache.catalina.Context;
import org.apache.tomcat.util.descriptor.web.JspConfigDescriptorImpl;
import org.apache.tomcat.util.descriptor.web.JspPropertyGroup;
import org.apache.tomcat.util.descriptor.web.JspPropertyGroupDescriptorImpl;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@Configuration
public class Kicspringboot1Application implements WebMvcConfigurer{

	public static void main(String[] args) {
		SpringApplication.run(Kicspringboot1Application.class, args);
	}
	@Bean  //jsp-config
	   public ConfigurableServletWebServerFactory configurableServletWebServerFactory() {
	      return new TomcatServletWebServerFactory() {

	         @Override
	         protected void postProcessContext(Context context) {
	            super.postProcessContext(context);
	            JspPropertyGroup jspPropertyGroup = new JspPropertyGroup();
	            jspPropertyGroup.addUrlPattern("/WEB-INF/view/*");
	            jspPropertyGroup.addIncludePrelude("/common/head.jsp");

	            JspPropertyGroupDescriptorImpl jspPropertyGroupDescriptor = new JspPropertyGroupDescriptorImpl(
	                  jspPropertyGroup);
	            context.setJspConfigDescriptor(new JspConfigDescriptorImpl(
	                  Collections.singletonList(jspPropertyGroupDescriptor), Collections.emptyList()));
	         }
	      };
	   }

}
