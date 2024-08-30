package com.user.servlet;

import java.io.File;
import java.io.IOException;

import com.DAO.MaozinhaDAOImplement;
import com.DB.DBConnect;
import com.entity.MaozinhaDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/add_maozinha_user")
@MultipartConfig
public class AddMaozinhaUser extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String maozinhaName = req.getParameter("mname");
			String reqName = req.getParameter("claimant");
			String totalValue = req.getParameter("totalvalue");
			String minValue = req.getParameter("minvalue");
			String userEmail = req.getParameter("user");
			String category = req.getParameter("mtype");
			String status = req.getParameter("mstatus");
			Part part = req.getPart("mimg");
			String fileName = part.getSubmittedFileName();

			MaozinhaDtls maozinha = new MaozinhaDtls(maozinhaName, reqName, totalValue, minValue, category, status,
					fileName, userEmail);

			MaozinhaDAOImplement dao = new MaozinhaDAOImplement(DBConnect.getConn());

			/* System.out.println(path); */

			boolean f = dao.addMaozinha(maozinha);

			HttpSession session = req.getSession();

			if (f) {

				String path = getServletContext().getRealPath("") + "maozinhas_img";
				System.out.println(path) ;
				File file = new File(path);
				part.write(path + File.separator + fileName);

				session.setAttribute("succMsg", "Mãozinha adicionada com sucesso !");
				resp.sendRedirect("sell_maozinha.jsp");
			} else {
				session.setAttribute("failMsg", "Há algo de errado no servidor");
				resp.sendRedirect("sell_maozinha.jsp");
			}

			/*
			 * teste de input da página 
			 * System.out.println(maozinha) ;
			 */

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
