package com.user.servlet;

import java.io.IOException;

import com.DAO.CartDAOImplement;
import com.DAO.MaozinhaDAOImplement;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.MaozinhaDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			int mid=Integer.parseInt(req.getParameter("mid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			MaozinhaDAOImplement dao = new MaozinhaDAOImplement(DBConnect.getConn());
			MaozinhaDtls m = dao.getMaozinhaById(mid);
			
			Cart c = new Cart();
			c.setMaozinha_id(mid);
			c.setUser_id(uid);
			c.setMaozinha_name(m.getMaozinha_name());
			c.setReq_name(m.getReq_name());
			c.setPrice(Double.parseDouble(m.getMin_value()));
			c.setTotal_price(Double.parseDouble(m.getMin_value()));
			
			CartDAOImplement dao2= new CartDAOImplement(DBConnect.getConn());
			boolean f = dao2.addCart(c);
			
			HttpSession session = req.getSession();
			
			if(f) {
				
				session.setAttribute("addCart", "Mãozinha adicionada ao carrinho!");
				resp.sendRedirect("index.jsp");

			}else {
				
				session.setAttribute("failed", "Algo de errado ocorreu");
				resp.sendRedirect("index.jsp");

			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	
}
