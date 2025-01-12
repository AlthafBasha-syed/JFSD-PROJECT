package com.klef.jfsd.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.Admin;
import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;
import com.klef.jfsd.project.repository.AdminRepository;
import com.klef.jfsd.project.repository.FacultyRepository;
import com.klef.jfsd.project.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
 
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
		 return adminRepository.checkadminlogin(uname, pwd);
		
	}

	@Override
	public String insertstudent(Student s) 
	{
		String department=s.getDepartment();
		if(department.equalsIgnoreCase("CSE"))
		{
			s.setCourse1("JFSD");
			s.setCourse2("EP");
			s.setCourse3("PFSD");
			
		}
		studentRepository.save(s);
		return "Student Added Succesfully";
	}

	@Override
	public List<Student> viewallstudents() 
	{
		List<Student> slist=studentRepository.findAll();
		return slist;
	}
	
	@Override
	public String insertfaculty(Faculty f) 
	{
	
		facultyRepository.save(f);
		return "Faculty Added Succesfully";
	}

	@Override
	public List<Faculty> viewallfacultys() 
	{
		List<Faculty> flist=facultyRepository.findAll();
		return flist;
	}

}
