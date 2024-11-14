/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Category;
import Model.DiscountCode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kiennn
 */
public class DiscountDAO extends DBContext{
    public List<DiscountCode> getAll() {
        List<DiscountCode> list = new ArrayList<>();
        String sql = "select * from DiscountCode";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new DiscountCode(rs.getString("couponid"), rs.getFloat("DiscountPercent")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
