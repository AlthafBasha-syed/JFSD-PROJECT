package com.klef.jfsd.project.service;

import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;

public interface StudentService 
{
	 public Student checkstudentlogin(String uname, String pwd);
	 public void removes(int id);
	 public Student viewstudentbyid(int id);
	 public void UpdateStudent(Student s);
}