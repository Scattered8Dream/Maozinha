package com.admin.servlet;

import java.io.IOException;

import com.DAO.MaozinhaDAOImplement;
import com.DB.DBConnect;
import com.entity.MaozinhaDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/edit_maozinhas")

public class MaozinhasEditServelet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 try{

	            int id = Integer.parseInt(req.getParameter("id"));
	            String maozinhaName = req.getParameter("mname");
				String reqName = req.getParameter("claimant");
				String totalValue = req.getParameter("totalvalue");
				String minValue = req.getParameter("minvalue");
				String status = req.getParameter("mstatus");

	            MaozinhaDtls m = new MaozinhaDtls();

	            m.setMaozinha_id(id);
	            m.setMaozinha_name(maozinhaName);
	            m.setReq_name(reqName);
	            m.setTotal_value(totalValue);
	            m.setMin_value(minValue);
	            m.setStatus(status);

	            MaozinhaDAOImplement dao = new MaozinhaDAOImplement(DBConnect.getConn());
	            boolean f = dao.updateEditMaozinha(m);
	            HttpSession session = req.getSession();

	            if(f){

	                session.setAttribute("succMsg", "Mãozinha atualizada com sucesso !");
	                resp.sendRedirect("admin/all_maozinhas.jsp");
				} else {

					session.setAttribute("failMsg", "A mãozinha não pode ser atulizada");
	                resp.sendRedirect("admin/all_maozinhas.jsp");
	            }

	        }catch(Exception e){

	            e.printStackTrace();

	        }

	        //return f;

		
	}

}