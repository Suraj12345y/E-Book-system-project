package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOimpl;
import com.DB.DBConnect;
import com.entity.User;
@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet{

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			
HttpSession session=req.getSession();
		session.removeAttribute("userobj");
		
		
		
		
HttpSession session2=req.getSession();
	session.setAttribute("succMsg","Logout Sucessfully.....");
	resp.sendRedirect("Login.jsp");
	
		
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

	
	
	
	
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	
	
	
	
	
	
	
	
	
	
	

