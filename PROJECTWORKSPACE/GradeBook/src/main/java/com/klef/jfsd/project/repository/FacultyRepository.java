package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer>
{
	@Query("select f from Faculty f where f.username=?1 and f.password=?2")
	  public Faculty checkfacultylogin(String uname ,String pwd);
	
	@Modifying
	@Transactional
	@Query("delete  from Faculty f where f.id=?1")
	public void removef(int id);
	
}
