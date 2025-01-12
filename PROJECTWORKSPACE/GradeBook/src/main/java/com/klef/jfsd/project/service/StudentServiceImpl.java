package com.klef.jfsd.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;
import com.klef.jfsd.project.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{

	@Autowired
	private StudentRepository studentRepository;
	
	
	
	@Override
	public Student checkstudentlogin(String uname, String pwd)
	{
		
		return studentRepository.checkstudentlogin(uname, pwd);
	}



	@Override
	public void removes(int id) 
	{
	    studentRepository.removes(id);
		
	}
	
	@Override
	public Student viewstudentbyid(int id)
	{  
		Student s=(Student)studentRepository.findById(id).get();
		return s;
	}

	@Override
	public void UpdateStudent(Student s)
	{  
		Student s1=(Student)studentRepository.findById(s.getId()).get();
		 s.setPassword(s1.getPassword());
		studentRepository.save(s);
				
	}

}
