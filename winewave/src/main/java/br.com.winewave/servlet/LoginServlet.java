package br.com.winewave.servlet;

import br.com.winewave.dao.UsuarioDao;
import br.com.winewave.model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String usuario = req.getParameter("usuario");
        String senha = req.getParameter("senha");

        Usuario usr = new Usuario(usuario,senha);
        boolean usuarioValido = new UsuarioDao().verificarCredenciais(usr);

        if (usuarioValido){
            req.getSession().setAttribute("UsuarioLogado:", usuario);

            resp.sendRedirect("/find-all-vinhos");
        }
        else {
            req.setAttribute("message", "Invalid credentials!");

            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
