package com.anish.repository;

import java.util.List;

import com.anish.model.Student;


public interface StudentRepository {
	
	public List<Student> getAllStudents();
	
	public Student getStudentById(int id);
	
	public Student addStudent(Student student);
	
	public int deleteStudent(int id);
	
	public Student updateStudent(Student s);
}
