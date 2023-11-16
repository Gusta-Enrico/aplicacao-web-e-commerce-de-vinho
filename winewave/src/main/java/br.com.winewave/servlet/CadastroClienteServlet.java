package br.com.winewave.servlet;

import br.com.winewave.dao.ClienteDao;
import br.com.winewave.model.Cliente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/cadastroCliente")
public class CadastroClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("cadastroCliente.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idcliente = req.getParameter("idcliente");
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");


        Cliente cliente = new Cliente(idcliente, nome, email, senha);


        boolean cadastroSucesso = new ClienteDao().cadastrarCliente(cliente);

        if (cadastroSucesso) {
            req.getSession().setAttribute("message", "Cadastro realizado com sucesso!");
            resp.sendRedirect("/loginCliente");
        } else {
            req.getSession().setAttribute("message", "Erro no cadastro. Tente novamente.");
            resp.sendRedirect("/cadastroCliente");
        }
    }
}

