package com.admin.servlet;

import java.io.IOException;
import java.io.File;

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

@WebServlet("/add_maozinhas")
@MultipartConfig
public class MaozinhasAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String maozinhaName = req.getParameter("mname");
			String reqName = req.getParameter("claimant");
			String totalValue = req.getParameter("totalvalue");
			String minValue = req.getParameter("minvalue");
			/*
			 * Double totalValue = Double.parseDouble(req.getParameter("totalvalue"));
			 * Double minValue = Double.parseDouble(req.getParameter("minvalue"));
			 */
			String category = req.getParameter("mtype");
			String status = req.getParameter("mstatus");
			Part part = req.getPart("mimg");
			String fileName = part.getSubmittedFileName();

			MaozinhaDtls maozinha = new MaozinhaDtls(maozinhaName, reqName, totalValue, minValue, category, status,
					fileName, "a@a.com");

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
				resp.sendRedirect("admin/add_maozinha.jsp");
			} else {
				session.setAttribute("failMsg", "Há algo de errado no servidor");
				resp.sendRedirect("admin/add_maozinha.jsp");
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
