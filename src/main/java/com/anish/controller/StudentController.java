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
}
