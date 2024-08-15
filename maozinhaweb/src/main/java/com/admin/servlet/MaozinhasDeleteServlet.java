package com.admin.servlet;

import java.io.IOException;

import com.DAO.MaozinhaDAOImplement;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class MaozinhasDeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int id = Integer.parseInt(req.getParameter("id"));
			MaozinhaDAOImplement dao = new MaozinhaDAOImplement(DBConnect.getConn());
			boolean f=dao.deleteMaozinhas(id);
			
			HttpSession session = req.getSession();

            if(f){

                session.setAttribute("succMsg", "Mãozinha deletada com sucesso !");
                resp.sendRedirect("admin/all_maozinhas.jsp");
			} else {

				session.setAttribute("failMsg", "A mãozinha não pode ser deletada");
                resp.sendRedirect("admin/all_maozinhas.jsp");
            }
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}