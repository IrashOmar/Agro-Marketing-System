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
import java.sql.ResultSet;
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
        String FarmName = request.getParameter("Name");
        String Avail_quantity = request.getParameter("Avail_quantity");
        String Price = request.getParameter("Price");
      String Location = request.getParameter("Location");
        String Experience = request.getParameter("Experience");
        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\User\\Desktop\\New Fyp Design\\FypBackend\\MyDusunBackEnd\\MyDususn.com\\web\\img" + File.separator + fileName;
        File fileSaveDir = new File(savePath);

        part.write(savePath + File.separator);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
            PreparedStatement pst2 = con.prepareStatement("select * from farmerregistrationtest where Name=?");
            
             int farId =0 ;
            pst2.setString(1, FarmName);
             // farId = resultSet1.getString("cart_id");
            ResultSet rs = pst2.executeQuery();
            while (rs.next()){
                farId = rs.getInt("farId");
            }
            PreparedStatement pst = con.prepareStatement("insert into trybackend2(tree_id,cat_id,Name,farId,Avail_quantity,Price,Location,Experience,filename,path) values (?,?,?,?,?,?,?,?,?,?)");
            pst.setString(1, ProductName);
            pst.setString(2, Category);
            pst.setString(3, FarmName);
               pst.setInt(4, farId);
            pst.setString(5, Avail_quantity);
            pst.setString(6, Price);
            pst.setString(7, Location);
            pst.setString(8, Experience);
            pst.setString(9, fileName);
            pst.setString(10, savePath);
            pst.executeUpdate();
            response.setContentType("text/html; charset=utf-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"New Post Added!!\")");
            out.println("window.open('post2.html','_self')");
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
