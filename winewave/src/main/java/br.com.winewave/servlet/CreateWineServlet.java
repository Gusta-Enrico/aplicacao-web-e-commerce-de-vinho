package br.com.winewave.servlet;

import br.com.winewave.dao.VinhoDao;
import br.com.winewave.model.Vinho;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.apache.commons.fileupload.servlet.ServletFileUpload.isMultipartContent;

@WebServlet("/create-wine")
public class CreateWineServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        Map<String, String> parameters=  uploadImage(req);

        String idVinho = parameters.get("wine-id");
        String nome = parameters.get("wine-name");
        double preco = Double.parseDouble(parameters.get("wine-preco"));
        String descricao = parameters.get("wine-desc");
        String image = parameters.get("wine-image");


        Vinho vinho = new Vinho(nome, idVinho, preco, descricao, image);
        VinhoDao vinhoDAO = new VinhoDao();



        if (idVinho.isBlank()) {
            vinhoDAO.createVinho(vinho);
            System.out.println(nome);

        } else {
            vinhoDAO.updateVinho(vinho);
        }


        resp.sendRedirect("/admin/find-all-vinhos");


    }

    private Map<String, String> uploadImage(HttpServletRequest httpServletRequest) {

        HashMap<String, String> requestParameters = new HashMap<>();

        if (isMultipartContent(httpServletRequest)) {
            try {
                DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
                List<FileItem> fileItems = new ServletFileUpload(diskFileItemFactory).parseRequest(httpServletRequest);

                for (FileItem fileItem : fileItems) {
                    checkFiledType(fileItem, requestParameters);
                }
            } catch (Exception ex) {
                requestParameters.put("image", "img/default-wine.jpg");
            }
        }
        return requestParameters;
    }



    private void checkFiledType (FileItem item, Map requestParameters) throws Exception {
        if (item.isFormField()) {
            requestParameters.put(item.getFieldName(), item.getString());
        } else {
            String fileName = processUploadedFile(item);
            requestParameters.put("image", "img/".concat(fileName));
        }
    }

    private String processUploadedFile(FileItem fileItem) throws Exception {
        Long currentTime = new Date().getTime();
        String fileName = currentTime.toString().concat("-").concat(fileItem.getName().replace(" ", ""));
        String filePath = this.getServletContext().getRealPath("img").concat(File.separator).concat(fileName);
        fileItem.write(new File(filePath));
        return fileName;
    }
}