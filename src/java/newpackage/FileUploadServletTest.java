package newpackage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/FileUploadServletTest"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)

public class FileUploadServletTest extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        String ProductName = request.getParameter("ProductName");
        String Category = request.getParameter("Category");
        String FarmName = request.getParameter("FarmName");

        String Price = request.getParameter("Price");

//        String Location = request.getParameter("Location");
        String Experience = request.getParameter("Experience");
        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\User\\Desktop\\New Fyp Design\\FypBackend\\MyDusunBackEnd\\MyDususn.com\\web\\img" + File.separator + fileName;
        File fileSaveDir = new File(savePath);

        part.write(savePath + File.separator);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
            PreparedStatement pst = con.prepareStatement("insert into trybackend2(tree_id,cat_id,farId,Price,Experience,filename,path) values (?,?,?,?,?,?,?)");
            pst.setString(1, ProductName);
            pst.setString(2, Category);
            pst.setString(3, FarmName);
            pst.setString(4, Price);
//            pst.setString(5, Location);
            pst.setString(5, Experience);
            pst.setString(6, fileName);
            pst.setString(7, savePath);
            pst.executeUpdate();
            response.setContentType("text/html; charset=utf-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"New Post Added!!\")");
            out.println("window.open('post.html','_self')");
            out.println("</script >");;

        } catch (Exception e) {
            out.println(e);
        }

    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
