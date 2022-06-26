/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import com.servlet.db.DB;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet(name = "FileUploadTerms", urlPatterns = {"/FileUploadTerms"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
public class FileUploadTerms extends HttpServlet {

    PrintWriter out = null;
    Connection con = null;
    PreparedStatement ps = null;
    HttpSession session = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        try {
            out = response.getWriter();
            session = request.getSession(false);
            String folderName = "resources";
            String uploadPath = request.getServletContext().getRealPath("") + File.separator + folderName;//for netbeans use this code
            //String uploadPath = request.getServletContext().getRealPath("") + folderName;//for eclipse use this code
            File dir = new File(uploadPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            Part filePart = request.getPart("file");//Textbox value of name file.
            String date = request.getParameter("date");//Textbox value of name lastname.
//            String Content = request.getParameter("Content");//Textbox value of name name.

            String fileName = filePart.getSubmittedFileName();
            String path = folderName + File.separator + fileName;
            System.out.println("fileName: " + fileName);
            System.out.println("Path: " + uploadPath);
//            System.out.println("Content: " + Content);
            InputStream is = filePart.getInputStream();
            Files.copy(is, Paths.get(uploadPath + File.separator + fileName), StandardCopyOption.REPLACE_EXISTING);

            try {
                con = DB.getConnection();
                System.out.println("connection done");
                String sql = "insert into terms2 (date,filename,path) values(?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, date);
//                ps.setString(2, Content);
                ps.setString(2, fileName);
                ps.setString(3, path);
               

                int status = ps.executeUpdate();
                if (status > 0) {
                    response.setContentType("text/html; charset=utf-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"Sucessfully added!!\")");
            out.println("window.open('adminTest.jsp','_self')");
            out.println("</script >");;
                    
                    //  RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
                    //   rd.forward(request, response);
                    //  System.out.println("File uploaded successfully...");
                    //  System.out.println("Uploaded Path: " + uploadPath);
                }
            } catch (SQLException e) {
                out.println("Exception: " + e);
                System.out.println("Exception1: " + e);
            } finally {
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    out.println(e);
                }
            }

        } catch (IOException | ServletException e) {
            out.println("Exception: " + e);
            System.out.println("Exception2: " + e);
        }
    }

}
