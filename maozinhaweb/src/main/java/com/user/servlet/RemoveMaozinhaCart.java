package com.user.servlet;

import java.io.IOException;

import com.DAO.CartDAOImplement;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/remove_maozinha")
public class RemoveMaozinhaCart extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int mid=Integer.parseInt(req.getParameter("mid"));
		int uid=Integer.parseInt(req.getParameter("uid"));
		CartDAOImplement dao = new CartDAOImplement(DBConnect.getConn());
		boolean f = dao.deleteMaozinhaCart(mid,uid);
		HttpSession session = req.getSession();
		
		if(f) {
			
			session.setAttribute("succMsg", "Mãozinha removida com sucesso!");
			resp.sendRedirect("checkout.jsp");
			
		}else {
			
			session.setAttribute("failedMsg", "Algo aconteceu com o servidor");
			resp.sendRedirect("checkout.jsp");
			
		}
		
	}

	
	
}
