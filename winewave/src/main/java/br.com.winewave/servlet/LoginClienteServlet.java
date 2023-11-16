package br.com.winewave.servlet;

import br.com.winewave.dao.ClienteDao;
import br.com.winewave.model.Cliente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// LoginClienteServlet.java
@WebServlet("/loginCliente")
public class LoginClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("loginCliente.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Obtenha os parâmetros do formulário
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");

        // Verifique as credenciais
        Cliente cliente = new ClienteDao().buscarClientePorEmail(email);

        if (cliente != null && cliente.getSenha().equals(senha)) {
            req.getSession().setAttribute("loggedCli", cliente);
            resp.sendRedirect("/home");
        } else {
            req.setAttribute("message", "Invalid credentials!");
            req.getRequestDispatcher("/loginCliente.jsp").forward(req, resp);
        }
    }
}
