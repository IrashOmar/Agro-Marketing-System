/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;
 import java.sql.*;

/**
 *
 * @author User
 */
public class UserDatabase {
    Connection con;

   
    public UserDatabase(Connection con){
        this.con = con;
    
}
    
    public User logUser(String email, String pass){
        User user=null;
        try{
            String query ="select * from farmerregistration where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                user = new User();
                user.setId(rs.getInt("farId"));
//                usr.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    }
    
    
    

