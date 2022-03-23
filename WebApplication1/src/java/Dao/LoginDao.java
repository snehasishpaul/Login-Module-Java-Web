package Dao;

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
public class LoginDao {

    private final String url = "jdbc:postgresql://localhost:5432/postgres";
    private final String username = "postgres";
    private final String password = "snehasish_paul?";

    String sql = "select * from employees where username=? and password=?";

    Connection con = null;

    public boolean check(String uname, String pass) {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, username, password);

            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uname);
            st.setString(2, pass);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }

        } catch (Exception ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }
}
