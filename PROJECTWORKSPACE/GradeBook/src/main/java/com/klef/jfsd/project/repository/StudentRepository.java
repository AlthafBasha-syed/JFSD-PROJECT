package com.klef.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.project.model.Student;

import jakarta.transaction.Transactional;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer>
{
	 @Query("select st from Student st where st.username=?1 and st.password=?2")
	  public Student checkstudentlogin(String uname ,String pwd);
	 
	    @Modifying
		@Transactional
		@Query("delete  from Student s where s.id=?1")
		public void removes(int id);
}
