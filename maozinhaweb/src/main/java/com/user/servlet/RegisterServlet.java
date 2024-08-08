package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImplement;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String name= req.getParameter("fname");
			String email= req.getParameter("email");
			String phno= req.getParameter("phno");
			String password = req.getParameter("password");
			
			//teste para leitura de informações, basta descomentar e olhar no console
			//System.out.println(name + " " + email + " " + phno + " " + password);
			
			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPhone(phno);
			user.setPassword(password);
			
			HttpSession session=req.getSession();
			
			UserDAOImplement dao = new UserDAOImplement(DBConnect.getConn());
			boolean f = dao.userRegister(user);
			
			if (f) {
				
				session.setAttribute("succMsg", "Usuário registrado com sucesso...");
				resp.sendRedirect("register.jsp");
				//System.out.println("Usuário registrado com sucesso...");
			
			}else {
			
				session.setAttribute("failMsg", "Usuário não pode ser registrado...");
				resp.sendRedirect("register.jsp");
				//System.out.println("Usuário não pode ser registrado...");
			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	
}