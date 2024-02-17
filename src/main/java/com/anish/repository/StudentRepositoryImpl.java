package com.anish.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.ResultSetExtractor;
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
	
	@Override
	public Student getStudentById(int id) {
		String sql ="select * from student where id=?";
		
		return jt.query(sql	, new ResultSetExtractor<Student>() {

			@Override
			public Student extractData(ResultSet rs) throws SQLException, DataAccessException {
				Student s=null;
				if(rs.next()) {
					s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3));
				}
				return s;
			}
		},id);
	}

	@Override
	public Student addStudent(Student student) {
		String sql = "insert into student values(?,?,?)";
		 jt.update(sql, new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, student.getId());
				ps.setString(2, student.getName());
				ps.setString(3, student.getCourse());
				return ps;
			}
		});
		 return null ;
	}
	
}
