package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.StudentDAOImpl;
import com.DB.DBConnection;
import com.entity.Student;


@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String email = req.getParameter("username");
			String password = req.getParameter("password");
			
			StudentDAOImpl studentDAO = new StudentDAOImpl(DBConnection.getConn());
			HttpSession session = req.getSession();
			
			
			
			if(email.equals("admin") && password.equals("password")) {
				Student st = new Student();
				session.setAttribute("adminobj", st);
				resp.sendRedirect("admin/home.jsp");
			}
			else {
				Student st = studentDAO.loginStudent(email,password);
				if(st!=null) {
					session.setAttribute("studentobj", st);
					resp.sendRedirect("home.jsp");
				}
				else {
					System.out.println(email +" "+password+"Im here");
					session.setAttribute("failedMsg","Incorrect Username or Password");
					resp.sendRedirect("login.jsp");
				}
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
