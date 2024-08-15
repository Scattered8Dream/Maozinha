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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			UserDAOImplement dao = new UserDAOImplement(DBConnect.getConn());
			HttpSession session = req.getSession();

			String email = req.getParameter("email");
			String password = req.getParameter("password");

			if ("a@a.com".equals(email) && "1234".equals(password)) {
				User user = new User();
				user.setName("Admin");
				session.setAttribute("userobj", user);
				resp.sendRedirect("admin/home.jsp");
			} else {
				
				User user = dao.login(email, password);
				
				if (user!=null) {
					
					session.setAttribute("userobj", user);
					resp.sendRedirect("home.jsp");
				}else {
				
					session.setAttribute("failMsg", "Email ou senha incorretos");
					resp.sendRedirect("login.jsp");
				}

				resp.sendRedirect("home.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}