package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.Admin;
import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;


public interface AdminService
{

  public Admin checkadminlogin(String uname, String pwd);
  public String insertstudent(Student s);
  public List<Student> viewallstudents();
  public String insertfaculty(Faculty f);
  public List<Faculty> viewallfacultys();
  
 
}