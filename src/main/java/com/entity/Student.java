package com.entity;

public class Student {
	
	private int studentid;
	private String name;
	private String address;
	private String email;
	private String password;
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getStudentid() {
		return studentid;
	}
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Student [studentid=" + studentid + ", name=" + name + ", address=" + address + ", email=" + email
				+ ", password=" + password + "]";
	}

	
}
