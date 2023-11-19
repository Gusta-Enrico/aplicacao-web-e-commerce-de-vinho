package br.com.winewave.servlet;

import br.com.winewave.dao.VinhoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-vinho")
public class DeleteVinhoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       String idVinho =  req.getParameter("idVinho");
       new VinhoDao().deleteVinhoById(idVinho);
       resp.sendRedirect("/home");

    }
    @WebServlet("/update-vinho")
    public class UpdateVinho extends HttpServlet {

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


                resp.sendRedirect("admin/index.jsp");
        }
    }
}
