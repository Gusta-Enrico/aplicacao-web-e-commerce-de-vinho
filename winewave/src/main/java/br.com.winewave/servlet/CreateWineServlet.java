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

        String nome = null;
        String idVinho = null;
        double preco = 0.0;
        String descricao = null;


        nome = req.getParameter("wine-name");
        preco = Double.parseDouble(req.getParameter("wine-preco"));
        descricao = req.getParameter("wine-desc");


        Vinho vinho = new Vinho(nome,idVinho,preco,descricao);

        new VinhoDao().createVinho(vinho);

        System.out.println(nome);

        resp.sendRedirect("/find-all-vinhos");


    }
}