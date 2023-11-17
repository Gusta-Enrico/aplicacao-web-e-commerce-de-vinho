package br.com.winewave.servlet;

import br.com.winewave.dao.VinhoDao;
import br.com.winewave.model.Vinho;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet({"/home","/admin/find-all-vinhos"})
public class ListWineServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Vinho> vinhos = new VinhoDao().findAllVinhos();

        req.setAttribute("vinhos", vinhos);
        if(req.getSession().getAttribute("loggedUser") != null) {
            req.getRequestDispatcher("/admin/dashboard.jsp").forward(req, resp);

        }else
            req.getRequestDispatcher("/admin/dashboard.jsp").forward(req, resp);

    }
}
