package com.anish.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.anish.model.Student;
import com.anish.service.ServiceLayer;

@Controller
public class StudentController {
	
	@Autowired
	ServiceLayer sl;
	
	@GetMapping(path = "/home")
	public String homeHandler() {
		return "homePage";
	}
	
	@GetMapping(path = "/allStudent")
	public ModelAndView ListOfStudents() {
		List<Student> data = sl.gettingAllStudents();

		ModelAndView model = new ModelAndView();

		model.setViewName("allStudent");
		model.addObject("StudentList", data);
		return model;
	}
	
	@PostMapping(path = "/listing")
	public ModelAndView renderingSigleId(@RequestParam (name="id") int id) {
		Student ids = sl.gettingStudentById(id);
		ModelAndView mnv = new ModelAndView("list");
		mnv.addObject("singleId", ids);
		return mnv;
	}
	
	// this path will redirect to the student form
	@GetMapping(path = "/addStudent")
	public String redirectToAddStudent() {
		return "addStudent";
	}
	
	//setting the values and on submission of form it redirects to all student page
	@PostMapping(path = "/addStudent")
	public String addStudent(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("course") String course ){
		sl.addStudent(new Student(id, name, course));
		return "redirect:/app/allStudent";
	}
	
	@GetMapping(path = "/delete")
	public String deleteById(@RequestParam("id") int id) {
		 sl.deleteStudent(id);
		return "forward:/app/allStudent";
	}
	
	@GetMapping(path = "/LoadUpdate")
	public ModelAndView updateLoader(@RequestParam(name = "id") int id) {
		ModelAndView mnv = new ModelAndView("updatepage");
		Student ids = sl.gettingStudentById(id);
		mnv.addObject("ids",ids);
		return mnv;
	}
	
	@PostMapping(path = "/update")
	public String updateStudent( @RequestParam("ids") int id, @RequestParam("name") String name, @RequestParam("course") String course) {
		System.out.println(name);
		sl.updateStudent(new Student(id,name,course));
		return "redirect:/app/allStudent";
	}
}
