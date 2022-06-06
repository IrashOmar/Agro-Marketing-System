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
@WebServlet(urlPatterns = {"/FileUploadReadingSection"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50)

public class FileUploadReadingSection extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();

        String topic = request.getParameter("topic");
        String content = request.getParameter("content");
        String url = request.getParameter("url");

        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\User\\Desktop\\New Fyp Design\\FypBackend\\MyDusunBackEnd\\MyDususn.com\\web\\img" + File.separator + fileName;
        File fileSaveDir = new File(savePath);

        part.write(savePath + File.separator);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
            PreparedStatement pst = con.prepareStatement("insert into readingsection (topic,content,url,filename,path) values (?,?,?,?,?)");
            pst.setString(1, topic);
            pst.setString(2, content);
            pst.setString(3, url);
            pst.setString(4, fileName);
            pst.setString(5, savePath);
            pst.executeUpdate();
            response.setContentType("text/html; charset=utf-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"New Post Added!!\")");
            out.println("window.open('ManageReadingSection.jsp','_self')");
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
