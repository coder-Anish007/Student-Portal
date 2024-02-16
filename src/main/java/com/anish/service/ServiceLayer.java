package com.anish.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anish.model.Student;
import com.anish.repository.StudentRepositoryImpl;

@Service
public class ServiceLayer {
	
	@Autowired
	StudentRepositoryImpl sr;
	
	public List<Student> gettingAllStudents(){
		return sr.getAllStudents();
	}
	
	public Student gettingStudentById(int id) {
		return sr.getStudentById(id); 
	} 
}
