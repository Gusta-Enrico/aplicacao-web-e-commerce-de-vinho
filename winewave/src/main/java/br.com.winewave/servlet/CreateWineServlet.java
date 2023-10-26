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

        String wineName = null;
        double winePreco = 0.0;
        String wineDesc = null;


        wineName = req.getParameter("Vinho: ");
        winePreco = Double.parseDouble(req.getParameter(String.valueOf("Preço: ")));
        wineDesc = req.getParameter("Descrição: ");


        Vinho vinho = new Vinho(wineName,winePreco,wineDesc);

        new VinhoDao().createVinho(vinho);

        System.out.println(wineName);

        resp.sendRedirect("/find-all-vinhos");


    }
}