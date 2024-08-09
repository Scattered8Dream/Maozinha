package com.admin.servlet

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;


@WebServlet("/edit_maozinhas")

public class MaozinhasEditServelet extends HttpServlet {

    //importar o método correto pelo eclipse IDE
    doPost(){

        try(){

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
                resp.senRedirect("admin/all_maozinhas.jsp");
			} else {

				session.setAttribute("failMsg", "A mãozinha não pode ser atulizada");
                resp.senRedirect("admin/all_maozinhas.jsp");
            }else{



            }

        }catch(e){

            e.printStackTrace();

        }

        return f;

    }
    //==========================================
}