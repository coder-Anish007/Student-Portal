package com.anish.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.anish.model.Student;

@Repository
public class StudentRepositoryImpl implements StudentRepository{
	
	@Autowired
	JdbcTemplate jt;

	@Override
	public List<Student> getAllStudents() {
		String sql="select * from student";
		return jt.query(sql, new RowMapper<Student>() {

			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student student = new Student(rs.getInt(1),rs.getString(2),rs.getString(3));
				return student;
			}
		});
	}
	
	
}
