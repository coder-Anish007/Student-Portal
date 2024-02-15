package com.anish.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Student {

	public Student(String name, String course) {
		this.name=name;
		this.course=course;
	}
	private int id;
	private String name;
	private String course;
}

