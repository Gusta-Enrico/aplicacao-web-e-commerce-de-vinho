package br.com.winewave.servlet;

import br.com.winewave.dao.VinhoDao;
import br.com.winewave.model.Vinho;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-wine")
public class CreateWineServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String idVinho = req.getParameter("wine-id");
        String nome = req.getParameter("wine-name");
        double preco = Double.parseDouble(req.getParameter("wine-preco"));
        String descricao = req.getParameter("wine-desc");


        Vinho vinho = new Vinho(nome, idVinho, preco, descricao);
        VinhoDao vinhoDAO = new VinhoDao();



        if (idVinho.isBlank()) {
            vinhoDAO.createVinho(vinho);
            System.out.println(nome);

        } else {
            vinhoDAO.updateVinho(vinho);
        }


        resp.sendRedirect("/find-all-vinhos");


    }
}