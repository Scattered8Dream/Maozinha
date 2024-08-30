package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImplement;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int id = Integer.parseInt(req.getParameter("id"));
			String name= req.getParameter("fname");
			String email= req.getParameter("email");
			String phno= req.getParameter("phno");
			String password = req.getParameter("password");
			
			UserDAOImplement dao = new UserDAOImplement(DBConnect.getConn());
			boolean f = dao.checkPassword(id, password);
			
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
