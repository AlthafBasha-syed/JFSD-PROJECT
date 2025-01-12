package com.klef.jfsd.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "faculty_table")
public class Faculty 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "fname",length =30,nullable = false)
    private String name;
    @Column(name = "fgender",length =10,nullable = false)
    private String gender;
    @Column(name = "fdob",length =30,nullable = false)
    private String dateofbirth;
    @Column(name = "fdepartment",length =30,nullable = false)
    private String department;
    @Column(name = "fexperience",length =30,nullable = false)
    private String experience;
    @Column(name = "fqualification",length =30,nullable = false)
    private String qualification;
    @Column(name = "femail",length =30,nullable = false,unique = true)
    private String email;
    @Column(name = "fcontact",length = 20,nullable = false,unique = true)
    private String contact;
    @Column(name = "fusername",length =30,nullable = false,unique = true)
    private String username;
    @Column(name = "fpassword",length = 20,nullable = false)
    private String password;
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
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
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
	@Override
	public String toString() {
		return "Faculty [id=" + id + ", name=" + name + ", gender=" + gender + ", dateofbirth=" + dateofbirth
				+ ", department=" + department + ", experience=" + experience + ", qualification=" + qualification
				+ ", email=" + email + ", contact=" + contact + ", username=" + username + ", password=" + password
				+ "]";
	}
    
}
