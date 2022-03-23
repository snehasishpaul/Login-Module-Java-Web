package Dao;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author snehasish
 */
public class RegisterDao {
    private final String url = "jdbc:postgresql://localhost:5432/postgres";
    private final String username = "postgres";
    private final String password = "snehasish_paul?";
    
    String sql = "insert into employees(email,username,password,address) values(?,?,?,?)";
    
    Connection con = null;
    
    public void register(String email, String uname, String pass, String add) {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, username, password);
            
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, uname);
            st.setString(3, pass);
            st.setString(4, add);
            
            ResultSet rs = st.executeQuery();
            
        } catch (Exception ex) {
            Logger.getLogger(RegisterDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }    
    
    
}
