package com.klef.jfsd.project.service;

import java.util.Arrays;
import java.util.List;

import org.apache.el.stream.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;
import com.klef.jfsd.project.repository.FacultyRepository;
import com.klef.jfsd.project.repository.StudentRepository;

@Service
public class FacultyServiceImpl implements FacultyService
{

	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Override
	public Faculty checkfacultylogin(String uname, String pwd)
	{
		
		return facultyRepository.checkfacultylogin(uname, pwd);
	}

	@Override
	public void removef(int id)
	{
	   facultyRepository.removef(id);
		
	}

	@Override
	public Faculty viewfacultybyid(int id)
	{  
		Faculty f=(Faculty)facultyRepository.findById(id).get();
		return f;
	}

	@Override
	public void Updatefaculty(Faculty f)
	{  
		 Faculty f1=facultyRepository.findById(f.getId()).get();
		 f.setPassword(f1.getPassword());
		facultyRepository.save(f);
				
	}

	@Override
	public Student viewstudentbyid(int id)
	{
		
		return (Student)studentRepository.findById(id).get();
	}

	@Override
	public List<Student> viewallstudents()
	{
		List<Student> slist=studentRepository.findAll();
		return slist;
	}

	@Override
	public void UpdateStudent(Student s) 
	{
		Student s1=(Student)studentRepository.findById(s.getId()).get();
		s.setId(s1.getId());
    	s.setName(s1.getName());
    	s.setGender(s1.getGender());
    	s.setDateofbirth(s1.getDateofbirth());
    	s.setDepartment(s1.getDepartment());
    	s.setEmail(s1.getEmail());
    	//s.setContact(s1.getContact());
    	s.setUsername(s1.getUsername());
		 s.setPassword(s1.getPassword());
		 s.setCourse1(s1.getCourse1());
		 s.setCourse2(s1.getCourse2());
		 s.setCourse3(s1.getCourse3());
		studentRepository.save(s);
		
	}
	
	
   
}
