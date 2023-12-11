package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Student;

public class StudentDAOImpl implements StudentDAO {

	private Connection conn;

	public StudentDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public Student loginStudent(String email, String password) {
		Student st = null;
		
		try {
			String sql = "select * from student where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				st = new Student();
				
				st.setStudentid(rs.getInt(1));
				st.setName(rs.getString(2));
				st.setAddress(rs.getString(3));
				st.setEmail(rs.getString(4));
				st.setPassword(rs.getString(5));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return st;
		
	}

}
