/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Orders;
import Model.Product;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kiennn
 */
public class AccountDAO extends DBContext {
    public String getCurrentPassword(int id){
        String password=null;
        try {
           String sql = "Select passwords from account where accountid=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                password = rs.getString("passwords");
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return password;
    }
    public void setNewPassword(String password,int id){
        try {
            String sql = "UPDATE account set passwords =? where accountid=? ";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setInt(2, id);
            st.execute();
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public int getMaxID() {
        int id = 0;
        try {
            String sql = "SELECT MAX(AccountId) AS max_id FROM account";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                id = rs.getInt("max_id");
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return id + 1;
    }

    //register
    public void register(User users) throws SQLException {
        String sql = "INSERT INTO ACCOUNT(AccountId,Customer_name,Sex,Email,Passwords,Phone_Number,BirthDate,username,Role) VALUES (?,?,Null,?,?,?,Null,?,2)";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, users.getId());
            st.setString(2, users.getCustomer_name());
            st.setString(3, users.getEmail());
            st.setString(4, users.getPassword());
            st.setString(5, users.getPhone_number());
            st.setString(6, users.getUsername());
            st.execute();
            st.close();

        } catch (SQLException e) {
            System.err.println(e);
        }

    }

    //getuser
    public User getUsername(String username) {
        try {
            String sql = "select * from ACCOUNT where Username =?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            rs.next();
            User user = new User();
            user.setId(rs.getInt("accountid"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("passwords"));
            user.setRole(rs.getInt("role"));
            user.setId(rs.getInt("accountid"));
            user.setCustomer_name(rs.getString("customer_name"));
            user.setSex(rs.getString("sex"));
            user.setEmail(rs.getString("email"));
            user.setPhone_number(rs.getString("phone_number"));
            user.setBirthdate(rs.getString("birthdate"));
            return user;

        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public void edit(User users) throws SQLException {
        String sql = "Update ACCOUNT set Customer_name=?,Sex=?,Email=?,Passwords=?,Phone_Number=?,BirthDate=?,username=?,Role=? where accountid=?";

        try (PreparedStatement st = connection.prepareStatement(sql)) {

            st.setString(1, users.getCustomer_name());
            st.setString(2, users.getSex());
            st.setString(3, users.getEmail());
            st.setString(4, users.getPassword());
            st.setString(5, users.getPhone_number());
            st.setString(6, users.getBirthdate());
            st.setString(7, users.getUsername());
            st.setInt(8, users.getRole());
            st.setInt(9, users.getId());
            st.execute();
            st.close();

        } catch (SQLException e) {
            System.err.println(e);
        }

    }

    public int getSoLuongAccount() {
        try {
            String sql = "SELECT COUNT(ac.AccountId) AS total_revenue\n"
                    + "FROM account ac;";
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeQuery();
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt("total_revenue");
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<User> getAllAccount() {
        List<User> list = new ArrayList<>();
        String sql = "select * from account ORDER BY CAST(accountid AS INTEGER) ASC";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("accountid"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("passwords"));
                user.setRole(rs.getInt("role"));
                user.setId(rs.getInt("accountid"));
                user.setCustomer_name(rs.getString("customer_name"));
                user.setSex(rs.getString("sex"));
                user.setEmail(rs.getString("email"));
                user.setPhone_number(rs.getString("phone_number"));
                user.setBirthdate(rs.getString("birthdate"));
                list.add(user);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public User get(int id) {
        try {
            String sql = "select * from account where accountid =?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            rs.next();
            User user = new User();
            user.setId(rs.getInt("accountid"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("passwords"));
            user.setRole(rs.getInt("role"));
            user.setId(rs.getInt("accountid"));
            user.setCustomer_name(rs.getString("customer_name"));
            user.setSex(rs.getString("sex"));
            user.setEmail(rs.getString("email"));
            user.setPhone_number(rs.getString("phone_number"));
            user.setBirthdate(rs.getString("birthdate"));
            return user;

        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }
   

    public void delete(int id) {
        try {
            String sql = "DELETE FROM account WHERE accountid = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.execute();
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public void setMatKhauMoi(String password,String email){
        try {
            String sql = "UPDATE account set passwords =? where email=? ";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, email);
            st.execute();
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
