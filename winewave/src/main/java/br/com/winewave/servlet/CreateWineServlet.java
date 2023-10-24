package br.com.winewave.servlet;

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

        String wineName = req.getParameter("Vinho: ");

        System.out.println(wineName);

        req.getRequestDispatcher("index.html").forward(req, resp);

    }
}