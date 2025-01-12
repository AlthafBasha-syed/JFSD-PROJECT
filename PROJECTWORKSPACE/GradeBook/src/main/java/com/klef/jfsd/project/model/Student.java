package com.klef.jfsd.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "student_table")
public class Student 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "sname",length =30,nullable = false)
    private String name;
    @Column(name = "sgender",length =10,nullable = false)
    private String gender;
    @Column(name = "sdob",length =30,nullable = false)
    private String dateofbirth;
    @Column(name = "sdepartment",length =30,nullable = false)
    private String department;
    @Column(name = "semail",length =30,nullable = false,unique = true)
    private String email;
    @Column(name = "scontact",length = 20,nullable = false,unique = true)
    private String contact;
    @Column(name = "susername",length =30,nullable = false,unique = true)
    private String username;
    @Column(name = "spassword",length = 20,nullable = false)
    private String password;
    @Column(name = "scourse1")
    private String course1;
    @Column(name = "scourse2")
    private String course2;
    @Column(name = "scourse3")
    private String course3;
    @Column(name = "sgrade1")
    private int grade1;
    @Column(name = "sgrade2")
    private int grade2;
    @Column(name = "sgrade3")
    private int grade3;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCourse1() {
		return course1;
	}
	public void setCourse1(String course1) {
		this.course1 = course1;
	}
	public String getCourse2() {
		return course2;
	}
	public void setCourse2(String course2) {
		this.course2 = course2;
	}
	public String getCourse3() {
		return course3;
	}
	public void setCourse3(String course3) {
		this.course3 = course3;
	}
	public int getGrade1() {
		return grade1;
	}
	public void setGrade1(int grade1) {
		this.grade1 = grade1;
	}
	public int getGrade2() {
		return grade2;
	}
	public void setGrade2(int grade2) {
		this.grade2 = grade2;
	}
	public int getGrade3() {
		return grade3;
	}
	public void setGrade3(int grade3) {
		this.grade3 = grade3;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", gender=" + gender + ", dateofbirth=" + dateofbirth
				+ ", department=" + department + ", email=" + email + ", contact=" + contact + ", username=" + username
				+ ", password=" + password + ", course1=" + course1 + ", course2=" + course2 + ", course3=" + course3
				+ ", grade1=" + grade1 + ", grade2=" + grade2 + ", grade3=" + grade3 + "]";
	}
   
    //@Column(name ="scgpa",precision = 4,scale =2,nullable = false)
    //private double cgpa;
	
	
	
	
	
}
