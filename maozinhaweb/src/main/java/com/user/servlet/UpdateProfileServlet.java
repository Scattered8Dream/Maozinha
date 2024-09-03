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
			
			User user = new User();
			user.setId(id);
			user.setName(name);
			user.setEmail(email);
			user.setPhone(phno);
			
			HttpSession session=req.getSession();
			UserDAOImplement dao = new UserDAOImplement(DBConnect.getConn());
			boolean f = dao.checkPassword(id, password);
			
			
			if(f) {
				
				boolean f2 = dao.updateProfile(user);
				if(f2) {
					session.setAttribute("succMsg", "Usuário atualizado com sucesso...");
					resp.sendRedirect("edit_profile.jsp");
					//System.out.println("Usuário registrado com sucesso...");
				
				}else {
				
					session.setAttribute("failMsg", "Usuário não pode ser atualizado...");
					resp.sendRedirect("edit_profile.jsp");
					//System.out.println("Usuário não pode ser atualizado...");
				}
				
			}else {
				session.setAttribute("failMsg", "Sua senha está incorreta");
				resp.sendRedirect("edit_profile.jsp");
				System.out.println("terceiro if");
			}
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
