package com.klef.jfsd.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import ch.qos.logback.core.net.SyslogOutputStream;

@SpringBootApplication
public class GradeBookApplication {

	public static void main(String[] args)
	{
		SpringApplication.run(GradeBookApplication.class, args);
		System.out.println("Hi This is My JFSD Project");
	}

}
