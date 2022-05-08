/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author User
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {

    private static Connection connection = null;

    public CategoryDao() {
        connection = DBConnection.getConnection();
    }

//    protected List<Category> retrieveAllCategory() {
//        List<Category> categoryAll = new ArrayList<Category>();
//        Category category;
//        
        protected Category getCategory(String tree_id)
                throws SQLException {

        try {
           
            String query = "SELECT * FROM tree WHERE tree_id = ?";
	    	PreparedStatement ps = connection.prepareStatement(query);
	    	ps.setString(1,  tree_id);
	    	ResultSet rs = ps.executeQuery();
	    	Category category = new Category();
            while (rs.next()) {
                category.setTree_id(rs.getInt("tree_id"));
                category.setCat_id(rs.getInt("cat_id"));
                category.setProduct_name(rs.getString("product_name"));
                category.setFilename(rs.getString("filrname"));
            }
            return category;
                    }catch (SQLException e) {
                        throw new SQLException(e);
                    }finally {
                         connection.close();
        }
        }
                
         

            }

        

    

