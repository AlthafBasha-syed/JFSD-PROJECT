package com.klef.jfsd.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.project.model.Admin;
import com.klef.jfsd.project.model.Faculty;
import com.klef.jfsd.project.model.Student;
import com.klef.jfsd.project.repository.FacultyRepository;
import com.klef.jfsd.project.repository.StudentRepository;
import com.klef.jfsd.project.service.AdminService;
import com.klef.jfsd.project.service.FacultyService;
import com.klef.jfsd.project.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
@Controller
public class ClientController 
{
	@Autowired
	private StudentService studentService;
	 @Autowired
		private FacultyService facultyService;
		@Autowired
		private AdminService adminService;
	
	//student
	
	
	@GetMapping("/")
	  public String main()
	  {
	    return "/login";
	  }
	@GetMapping("/logout")
	  public String man()
	  {
	    return "/login";
	  }
	
	@GetMapping("/MYCGPA")
	  public ModelAndView MYCGPA(HttpServletRequest request)
	  {
		ModelAndView mv=new ModelAndView();
		HttpSession session= request.getSession();
		Student s = studentService.viewstudentbyid((int)session.getAttribute("sid"));
		int g1= s.getGrade1();
		int g2= s.getGrade2();
		int g3= s.getGrade3();
		double gpa=(g1+g2+g3)/3.0;
    	mv.addObject("gpa",gpa);
    	mv.setViewName("studentfiles/MYCGPA");
	    return mv;
	  }
      
	@GetMapping("/home")
	  public String home()
	  {
	    return "studentfiles/home";
	  }
	@GetMapping("/about")
	  public String about()
	  {
	    return "studentfiles/about";
	  }
	@GetMapping("/course")
	  public String studentcourse()
	  {
	    return "studentfiles/course";
	  }
	@GetMapping("/GradeBook")
	  public ModelAndView GradeBook(HttpServletRequest request)
	  {
	    ModelAndView mv=new ModelAndView();
	    HttpSession session=request.getSession();
	    mv.addObject("s", studentService.viewstudentbyid(Integer.parseInt(session.getAttribute("sid").toString())));
	    mv.setViewName("studentfiles/GradeBook");
	    return mv;
	  }
	@GetMapping("/contact")
	  public String contact()
	  {
	    return "studentfiles/contact";
	  }
	@GetMapping("/changepassword")
	  public String changepassword()
	  {
	    return "studentfiles/changepassword";
	  }
	@GetMapping("/profile")
	  public ModelAndView profile(HttpServletRequest request)
	  {
		ModelAndView mv=new ModelAndView();
		HttpSession session= request.getSession(); 
		mv.addObject("s", studentService.viewstudentbyid((int)session.getAttribute("sid")));
    	mv.setViewName("studentfiles/profile");
	    return mv;
	    
	  }
	@GetMapping("/studentlogin")
	  public String studentlogin()
	  {
	    return "studentfiles/home";
	  }
	@PostMapping("/checkstudentlogin")
    public ModelAndView checkstudentlogin(HttpServletRequest request)
    {
    	ModelAndView mv=new ModelAndView();
    	
    	String uname=request.getParameter("uname");
    	String pwd=request.getParameter("pwd");
    	System.out.println(uname+" " + pwd);
    	Student student=studentService.checkstudentlogin(uname, pwd);
    	
    	if(student!=null)
    	{  
    		
    		HttpSession session=request.getSession();
    		session.setAttribute("sid", student.getId());
    		mv.setViewName("studentfiles/home");
    	}
    	else
    	{
    		mv.setViewName("/login");
    		mv.addObject("message", "Login Failed");
 
    	}
    	return mv;
    }
	
	
	
	
	//Admin
	

	
	@GetMapping("/addFaculty")
	  public String addFaculty()
	  {
	    return "adminfiles/addFaculty";
	  }
	@GetMapping("/addStudent")
	  public String addStudent()
	  {
	    return "adminfiles/addStudent";
	  }
	@GetMapping("/addCourse")
	  public String addCourse()
	  {
	    return "adminfiles/addCourse";
	  }
	@GetMapping("/viewCourse")
	  public String viewCourse()
	  {
	    return "adminfiles/viewCourse";
	  }
	@GetMapping("/viewallgrades")
	  public String viewallgrades()
	  {
	    return "adminfiles/viewallgrades";
	  }
	
	
	
	
	@GetMapping("/adminchangepassword")
	  public String adminchangepassword()
	  {
	    return "adminfiles/changepassword";
	  }
	@GetMapping("/adminlogin")
	  public String adminlogin()
	  {
	    return "adminfiles/adminlogin";
	  }
	
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request)
    {
    	ModelAndView mv=new ModelAndView();
    	
    	String uname=request.getParameter("uname");
    	String pwd=request.getParameter("pwd");
    	//System.out.println(uname+" " + pwd);
    	Admin admin=adminService.checkadminlogin(uname, pwd);
    	
    	if(admin!=null)
    	{  
    		
    		
    		mv.setViewName("adminfiles/adminhome");
    	}
    	else
    	{
    		mv.setViewName("adminfiles/adminlogin");
    		mv.addObject("message", "Login Failed");
 
    	}
    	return mv;
    }
    
    
    @PostMapping("insertfaculty")
    public ModelAndView insertFaculty(HttpServletRequest request)
    {  
    	ModelAndView mv=new ModelAndView();
    	String name=request.getParameter("tname");
    	String gender=request.getParameter("tgender");
    	String dateofbirth=request.getParameter("tdateofbirth");
    	String department=request.getParameter("tdepartment");
    	String email=request.getParameter("temail");
    	String contactno=request.getParameter("tcontact");
    	String username=request.getParameter("tusername");
    	String password=request.getParameter("tpassword");
    	String experience=request.getParameter("texperience");
    	String qualification=request.getParameter("tqualification");
    	Faculty f=new Faculty();
    	f.setName(name);
    	f.setGender(gender);
    	f.setDateofbirth(dateofbirth);
    	f.setDepartment(department);
    	f.setEmail(email);
    	f.setContact(contactno);
    	f.setUsername(username);
    	f.setPassword(password);
    	f.setExperience(experience);
    	f.setQualification(qualification);
    	
    	
    	System.out.println(email);
    	String msg=adminService.insertfaculty(f);
    	mv.addObject("msg", msg);
    	mv.setViewName("adminfiles/addFaculty");
    	
    	return mv;
    	
    }
    @GetMapping("/ListFacultys")
	  public ModelAndView listoffacultys()
	  {  
    	
    	ModelAndView mv=new ModelAndView();
    	List<Faculty> flist = adminService.viewallfacultys();
    	//System.out.println(flist);
    	mv.addObject("flist",flist);
    	mv.setViewName("adminfiles/listFacultys");
	    return mv;
	  }
    @PostMapping("insertstudent")
    public ModelAndView insertStudent(HttpServletRequest request)
    {  
    	ModelAndView mv=new ModelAndView();
    	String name=request.getParameter("tname");
    	String gender=request.getParameter("tgender");
    	String dateofbirth=request.getParameter("tdateofbirth");
    	String department=request.getParameter("tdepartment");
    	String email=request.getParameter("temail");
    	String contactno=request.getParameter("tcontact");
    	String username=request.getParameter("tusername");
    	String password=request.getParameter("tpassword");
    	Student s=new Student();
    	s.setName(name);
    	s.setGender(gender);
    	s.setDateofbirth(dateofbirth);
    	s.setDepartment(department);
    	s.setEmail(email);
    	s.setContact(contactno);
    	s.setUsername(username);
    	s.setPassword(password);
    	
    	
    	System.out.println(s);
    	String msg=adminService.insertstudent(s);
    	mv.addObject("msg", msg);
    	mv.setViewName("adminfiles/addStudent");
    	
    	return mv;
    	
    }
    @GetMapping("ListStudents")
	  public ModelAndView listofstudents()
	  {  
    	
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("slist",adminService.viewallstudents());
    	mv.setViewName("adminfiles/listStudents");
	    return mv;
	  }
    
    @GetMapping("removeFaculty")
    public ModelAndView removefaculty()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("flist",adminService.viewallfacultys());
    	mv.setViewName("adminfiles/rviewfaculty");
	    return mv;
    }
    @GetMapping("fdelete/{id}")
    public String removef(@PathVariable("id") int id)
    {
       facultyService.removef(id);
    	return "redirect:/removeFaculty";
    }
    
    @GetMapping("removeStudent")
    public ModelAndView removestudent()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("slist",adminService.viewallstudents());
    	mv.setViewName("adminfiles/rviewstudent");
	    return mv;
    }
    @GetMapping("sdelete/{id}")
    public String removes(@PathVariable("id") int id)
    {
       studentService.removes(id);
    	return "redirect:/removeStudent";
    }
    @GetMapping("/aupdate")
    public String update()
    {
    	return "adminfiles/update";
    }
    @GetMapping("/updatefaculty")
    public ModelAndView updatefaculty()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("flist",adminService.viewallfacultys());
    	mv.setViewName("adminfiles/updatefaculty");
	    return mv;
    }
    @GetMapping("/fupdate")
    public ModelAndView updatefacult(@RequestParam("id") int id)
    {
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("f",facultyService.viewfacultybyid(id));
    	mv.setViewName("adminfiles/updateformf");
	    return mv;
    }
    @PostMapping("/updatedfaculty")
    public String updatedfaculty(HttpServletRequest request)
    {
    	Faculty f=new Faculty();
    	f.setId(Integer.parseInt(request.getParameter("tid")));
    	f.setName(request.getParameter("tname"));
    	f.setGender(request.getParameter("tgender"));
    	f.setDateofbirth(request.getParameter("tdateofbirth"));
    	f.setDepartment(request.getParameter("tdepartment"));
    	f.setQualification(request.getParameter("tqualification"));
    	f.setExperience(request.getParameter("texperience"));
    	f.setEmail(request.getParameter("temail"));
    	f.setContact(request.getParameter("tcontact"));
    	f.setUsername(request.getParameter("tusername"));
         facultyService.Updatefaculty(f);
    	return "redirect:/updatefaculty";
    }
    @GetMapping("/updatestudent")
    public ModelAndView updatestudent()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("slist",adminService.viewallstudents());
    	mv.setViewName("adminfiles/updatestudent");
	    return mv;
    }
    @GetMapping("/supdate")
    public ModelAndView updatestuden(@RequestParam("id") int id)
    {
    	ModelAndView mv=new ModelAndView();
    	mv.addObject("s",studentService.viewstudentbyid(id));
    	mv.setViewName("adminfiles/updateforms");
	    return mv;
    }

    @PostMapping("updatedstudent")
    public String updatedstudent(HttpServletRequest request)
    {  
          Student s=new Student();
    	    s.setId(Integer.parseInt(request.getParameter("tid")));
	    	s.setName(request.getParameter("tname"));
	    	s.setGender(request.getParameter("tgender"));
	    	s.setDateofbirth(request.getParameter("tdateofbirth"));
	    	s.setDepartment(request.getParameter("tdepartment"));
	    	s.setEmail(request.getParameter("temail"));
	    	s.setContact(request.getParameter("tcontact"));
	    	s.setUsername(request.getParameter("tusername"));
           studentService.UpdateStudent(s);
    	
    	return "redirect:/updatestudent";
    }
	
	
	
	
	
	
	
	
	//faculty
   
	@GetMapping("/fstudent")
	  public ModelAndView fstudent()
	  { 
		ModelAndView mv=new ModelAndView();
		mv.addObject("slist", facultyService.viewallstudents());
		mv.setViewName("facultyfiles/Assign");
	    return mv;
	  }
	@GetMapping("/sassign")
	public ModelAndView sassign(@RequestParam("id") int id)
	{
		ModelAndView mv=new ModelAndView();
		mv.addObject("s", studentService.viewstudentbyid(id));
		mv.setViewName("facultyfiles/Assignform");
		return mv;
	}
	@PostMapping("assigngrades")
	public String assigngrades(HttpServletRequest request)
	{
		Student s=new Student();
		s.setId(Integer.parseInt(request.getParameter("tid")));
    	s.setName(request.getParameter("tname"));
    	s.setGender(request.getParameter("tgender"));
    	s.setDateofbirth(request.getParameter("tdateofbirth"));
    	s.setDepartment(request.getParameter("tdepartment"));
    	s.setEmail(request.getParameter("temail"));
    	s.setContact(request.getParameter("tcontact"));
    	s.setUsername(request.getParameter("tusername"));
    	s.setGrade1(Integer.parseInt(request.getParameter("grade1")));
    	s.setGrade2(Integer.parseInt(request.getParameter("grade2")));
    	s.setGrade3(Integer.parseInt(request.getParameter("grade3")));
    	System.out.println(s.getContact());
		System.out.println(s.getGrade1());
		System.out.println(s.getGrade2());
		System.out.println(s.getGrade3());
		studentService.UpdateStudent(s);
		return "redirect:/fstudent";
		
		
	}
	@GetMapping("/fcourse")
	  public String fcourse()
	  {
	    return "facultyfiles/fcourse";
	  }
	@GetMapping("/fgrades")
	  public String fgrades()
	  {
	    return "facultyfiles/fgrades";
	  }
	@GetMapping("/rstudent")
	  public String rstudent()
	  {
	    return "facultyfiles/rstudent";
	  }
	@PostMapping("/checkfacultylogin")
    public ModelAndView checkfacultylogin(HttpServletRequest request)
    {
    	ModelAndView mv=new ModelAndView();
    	
    	String uname=request.getParameter("uname");
    	String pwd=request.getParameter("pwd");
    	//System.out.println(uname+" " + pwd);
    	Faculty faculty=facultyService.checkfacultylogin(uname, pwd);
    	
    	if(faculty!=null)
    	{  
    		
    		
    		mv.setViewName("facultyfiles/fhome");
    	}
    	else
    	{
    		mv.setViewName("/login");
    		mv.addObject("message", "Login Failed");
 
    	}
    	return mv;
    }
	@GetMapping("/facultychangepassword")
	public String facultychangepassword()
	{
		return "facultyfiles/facultychangepassword";
	}
    
}
