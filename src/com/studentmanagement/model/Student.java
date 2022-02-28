package com.studentmanagement.model;

/**
 * 
 * @author Chandan Gupta
 *
 */
public class Student {
	protected int id;
	protected String name;
	protected String dob;
	protected String doj;
	
	public Student() {
	}
	
	public Student(String name, String dob, String doj) {
		super();
		this.name = name;
		this.dob = dob;
		this.doj = doj;
	}

	public Student(int id, String name, String dob, String doj) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.doj = doj;
	}

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
	public String getdob() {
		return dob;
	}
	public void setdob(String dob) {
		this.dob = dob;
	}
	public String getdoj() {
		return doj;
	}
	public void setdoj(String doj) {
		this.doj = doj;
	}
}
