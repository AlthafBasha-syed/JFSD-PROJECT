package com.klef.jfsd.project.service;

import java.util.List;

import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;

public interface FacultyService
{
	 public Faculty checkfacultylogin(String uname, String pwd);
	 public void removef(int id);
	 public Faculty viewfacultybyid(int id);
	 public void Updatefaculty(Faculty f);
	 public Student viewstudentbyid(int id);
	 public List<Student> viewallstudents();
	 public void UpdateStudent(Student s);
	 
}
