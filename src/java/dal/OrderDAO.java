/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Cart;
import Model.Invoice;
import Model.Item;
import Model.OrderDetails;
import Model.Orders;
import Model.Product;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author kiennn
 */
public class OrderDAO extends DBContext {

    public int getMaxID() {
        int id = 0;
        try {
            String sql = "SELECT MAX(OrderId) AS max_id FROM orders";
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

    public void addOrder(Orders o, Cart c, User u) {
        try {
            String sql = "insert into orders values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, o.getOrderid());
            st.setString(2, o.getCustomer_name());
            st.setString(3, o.getEmail());
            st.setString(4, o.getPhone());
            st.setString(5, o.getAddress());
            st.setString(6, o.getNote());
            st.setInt(7, o.getTotalQuantity());
            st.setDouble(8, o.getTmpPrice());
            st.setDouble(9, o.getTotalPrice());
            st.setInt(10, o.getAccountId());
            st.setString(11, o.getPaymentId());
            st.setString(12, o.getCoupounId());
            st.executeUpdate();
            String sql1 = "select top 1 orderid from orders order by orderid desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : c.getItems()) {
                    String sql2 = "insert into orderdetails values(?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, i.getProduct().getItemId());
                    st2.setInt(2, o.getOrderid());
                    st2.setInt(3, i.getQuantity());
                    st2.setString(4, i.getSize());
                    st2.executeUpdate();

                    String sqlUpdateQuantity = "UPDATE items SET quantity = quantity - ? WHERE itemId = ?";
                    PreparedStatement stUpdateQuantity = connection.prepareStatement(sqlUpdateQuantity);
                    stUpdateQuantity.setInt(1, i.getQuantity());
                    stUpdateQuantity.setInt(2, i.getProduct().getItemId());
                    stUpdateQuantity.executeUpdate();
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int getMaxInvoiceID() {
        int id = 0;
        try {
            String sql = "SELECT MAX(CAST(invoidid AS INT)) AS max_id FROM invoice;";
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

    public void exportInvoice(Invoice i, Orders o) {

        try {
            String sql = "insert into invoice values(?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, i.getInvoidid());
            st.setString(2, i.getCreateDate());
            st.setInt(3, o.getOrderid());
            st.executeQuery();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public double getTotalDoanhThu() {
        try {
            String sql = "SELECT SUM(od.TotalPrice) AS total_revenue\n"
                    + "FROM orders od";
            PreparedStatement st = connection.prepareStatement(sql);
            st.executeQuery();
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getDouble("total_revenue");
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getSoLuongDaBan() {
        try {
            String sql = "SELECT SUM(od.totalQuantity) AS total_revenue\n"
                    + "FROM orders od";
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

    public List<Invoice> getAllInvoice() {
        List<Invoice> list = new ArrayList<>();
        String sql = "select * from invoice ORDER BY CAST(invoidid AS INTEGER) DESC";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Invoice i = new Invoice();
                i.setOrderId(rs.getInt("orderid"));
                i.setInvoidid(rs.getInt("invoidid"));
                i.setCreateDate(rs.getString("createdate"));
                list.add(i);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Orders> getAllOrders() {
        List<Orders> list = new ArrayList<>();
        String sql = "select * from orders ORDER BY CAST(orderid AS INTEGER) DESC";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Orders o = new Orders(rs.getInt("orderid"),
                        rs.getString("customer_name"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("address"),
                        rs.getString("note"),
                        rs.getInt("totalQuantity"),
                        rs.getDouble("tmpPrice"),
                        rs.getDouble("totalprice"),
                        rs.getInt("accountid"),
                        rs.getString("pmid"),
                        rs.getString("couponid"));
                list.add(o);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Orders getOrderById(int orderid) {
        String sql = "select * from orders where orderid=?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, orderid);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                Orders o = new Orders(rs.getInt("orderid"),
                        rs.getString("customer_name"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("address"),
                        rs.getString("note"),
                        rs.getInt("totalQuantity"),
                        rs.getDouble("tmpPrice"),
                        rs.getDouble("totalprice"),
                        rs.getInt("accountid"),
                        rs.getString("pmid"),
                        rs.getString("couponid"));
                return o;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getSoLuongDaBanTrongThang(int month, int year) {
        try {
            String sql = "SELECT SUM(o.totalQuantity) AS total_quantity_sold\n"
                    + "FROM invoice i\n"
                    + "JOIN orders o ON i.orderid = o.orderid\n"
                    + "WHERE MONTH(i.createdate) = ? AND YEAR(i.createdate) = ?;";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, month);
            st.setInt(2, year);
            st.executeQuery();
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt("total_quantity_sold");
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public Invoice getInvoice(int orderid) {

        try {
            String sql = "select * from invoice where orderid =?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, orderid);
            ResultSet rs = st.executeQuery();
            rs.next();
            Invoice iv = new Invoice(rs.getInt("invoidid"), rs.getString("createdate"), rs.getInt("orderid"));

            return iv;

        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public List<OrderDetails> getListOrdersDetail(int orderid) {
        List<OrderDetails> list = new ArrayList<>();
        String sql = "select * from OrderDetails where orderid=? ORDER BY CAST(orderid AS INTEGER) DESC";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, orderid);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                OrderDetails ord = new OrderDetails(rs.getInt("itemid"), orderid, rs.getInt("quantity"), rs.getString("size"));
                list.add(ord);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Orders> getOrderByAccountId(int accountid) {
        List<Orders> list = new ArrayList<>();
        try {
            String sql = "select * from orders where accountid=?";
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, accountid);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Orders o = new Orders(rs.getInt("orderid"),
                        rs.getString("customer_name"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("address"),
                        rs.getString("note"),
                        rs.getInt("totalQuantity"),
                        rs.getDouble("tmpPrice"),
                        rs.getDouble("totalprice"),
                        rs.getInt("accountid"),
                        rs.getString("pmid"),
                        rs.getString("couponid"));
                list.add(o);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Map<String, Object>> getTop5Customer() {
        List<Map<String, Object>> customers = new ArrayList<>();
        try {
            String sql = "SELECT TOP 5 o.customer_name, SUM(o.totalprice) AS total_spent\n"
                    + "FROM orders o\n"
                    + "JOIN invoice i ON o.orderid = i.orderid\n"
                    + "WHERE MONTH(i.CreateDate) = MONTH(GETDATE())\n"
                    + "AND YEAR(i.CreateDate) = YEAR(GETDATE())\n"
                    + "GROUP BY o.customer_name\n"
                    + "ORDER BY total_spent DESC;";
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Map<String, Object> customerData = new HashMap<>();
                customerData.put("customer_name", rs.getString("customer_name"));
                customerData.put("total_spent", rs.getDouble("total_spent"));
                customers.add(customerData);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return customers;
    }
}
