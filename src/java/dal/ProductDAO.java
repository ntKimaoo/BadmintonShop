/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Category;
import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kiennn
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll(int index, int soLuong) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from items where quantity > 0 ORDER BY CAST(itemid AS INTEGER) ASC\n"
                + "offset ? rows fetch next ? rows only";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 12);
            pre.setInt(2, soLuong);
            
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                int itemid = rs.getInt("itemid");
                String name = rs.getString("name");
                String status = rs.getString("status");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                Date releaseDate = rs.getDate("releaseDate");
                String describe = rs.getString("describe");
                String img = rs.getString("image");
                int cateid = rs.getInt("categoryid");
                list.add(new Product(itemid, name, status, price, quantity, releaseDate, describe, img, cateid));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public List<Product> getAllManage(int index, int soLuong) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from items ORDER BY CAST(itemid AS INTEGER) ASC\n"
                + "offset ? rows fetch next ? rows only";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, (index - 1) * 12);
            pre.setInt(2, soLuong);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                int itemid = rs.getInt("itemid");
                String name = rs.getString("name");
                String status = rs.getString("status");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                Date releaseDate = rs.getDate("releaseDate");
                String describe = rs.getString("describe");
                String img = rs.getString("image");
                int cateid = rs.getInt("categoryid");
                list.add(new Product(itemid, name, status, price, quantity, releaseDate, describe, img, cateid));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getByCategoryAndPrice(String cate, double minPrice, double maxPrice, String item) {
        List<Product> list = new ArrayList<>();

        try {
            String sql = "Select i.ItemID,i.Name,i.Status,i.Price,i.quantity,i.releaseDate,i.describe,i.image,i.categoryid "
                    + "from items i\n"
                    + "join category c\n"
                    + "on i.categoryid = c.ID\n"
                    + "where c.name like ? AND price >= ? AND price <= ? AND i.name like ? AND quantity > 0";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cate);
            st.setDouble(2, minPrice);
            st.setDouble(3, maxPrice);
            st.setString(4, "%" + item + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("itemid"),
                        rs.getString("name"),
                        rs.getString("status"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getDate("releaseDate"),
                        rs.getString("describe"),
                        rs.getString("image"),
                        rs.getInt("categoryid")));
            }

        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public List<Product> getByPriceRange(double minPrice, double maxPrice, String item) {
        List<Product> products = new ArrayList<>();
        String sql = "Select i.ItemID,i.Name,i.Status,i.Price,i.quantity,i.releaseDate,i.describe,i.image,i.categoryid "
                + "from items i\n"
                + "join category c\n"
                + "on i.categoryid = c.ID\n"
                + "where price >= ? AND price <= ? AND i.name like ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setDouble(1, minPrice);
            stmt.setDouble(2, maxPrice);
            stmt.setString(3, "%" + item + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt("itemid"),
                        rs.getString("name"),
                        rs.getString("status"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getDate("releaseDate"),
                        rs.getString("describe"),
                        rs.getString("image"),
                        rs.getInt("categoryid")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public int getTotalItem(String item) {
        String sql = "select count(*) from items where name like ? AND quantity > 0";

        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, "%" + item + "%");
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getAllTotalItem() {
        String sql = "select count(*) from items where quantity > 0";

        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Product> pagingItem(String item, int index) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from items\n"
                + "where name like ? AND quantity > 0\n"
                + "order by ItemID\n"
                + "offset ? rows fetch next 12 rows only";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, "%" + item + "%");
            pre.setInt(2, (index - 1) * 12);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("itemid"),
                        rs.getString("name"),
                        rs.getString("status"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getDate("releaseDate"),
                        rs.getString("describe"),
                        rs.getString("image"),
                        rs.getInt("categoryid")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getArrival() {
        List<Product> list = new ArrayList<>();
        String sql = "select top 10 * from items where quantity > 0 ORDER BY CAST(itemid AS INTEGER) DESC;";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                int itemid = rs.getInt("itemid");
                String name = rs.getString("name");
                String status = rs.getString("status");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                Date releaseDate = rs.getDate("releaseDate");
                String describe = rs.getString("describe");
                String img = rs.getString("image");
                int cateid = rs.getInt("categoryid");
                list.add(new Product(itemid, name, status, price, quantity, releaseDate, describe, img, cateid));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getSameProduct(int id, int productid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM items WHERE categoryID = ? AND itemid <> ? AND quantity > 0";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, id);
            pre.setInt(2, productid);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                int itemid = rs.getInt("itemid");
                String name = rs.getString("name");
                String status = rs.getString("status");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                Date releaseDate = rs.getDate("releaseDate");
                String describe = rs.getString("describe");
                String img = rs.getString("image");
                int cateid = rs.getInt("categoryid");
                list.add(new Product(itemid, name, status, price, quantity, releaseDate, describe, img, cateid));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public List<Product> searchItemByName(String name, int index, int soLuongIn1Page) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from items\n"
                + "where name like ? AND quantity > 0\n"
                + "ORDER BY CAST(itemid AS INTEGER) ASC\n"
                + "offset ? rows fetch next ? rows only";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, "%" + name + "%");
            pre.setInt(2, (index - 1) * 12);
            pre.setInt(3, soLuongIn1Page);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("itemid"),
                        rs.getString("name"),
                        rs.getString("status"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getDate("releaseDate"),
                        rs.getString("describe"),
                        rs.getString("image"),
                        rs.getInt("categoryid")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public List<Product> searchInManage(String name) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from items\n"
                + "where name like ?\n"
                + "ORDER BY CAST(itemid AS INTEGER) ASC";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, "%" + name + "%");
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt("itemid"),
                        rs.getString("name"),
                        rs.getString("status"),
                        rs.getDouble("price"),
                        rs.getInt("quantity"),
                        rs.getDate("releaseDate"),
                        rs.getString("describe"),
                        rs.getString("image"),
                        rs.getInt("categoryid")));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public int getMaxID() {
        int id = 0;
        try {
            String sql = "SELECT MAX(CAST(itemid AS INT)) AS max_id FROM items;";
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
    
    public void add(Product product) throws SQLException {
        String sql = "INSERT INTO items(itemid, name, status,price,quantity,releaseDate,describe,image,categoryid) VALUES (?,?,?,?,?,?,?,?,?)";

        try (PreparedStatement st = connection.prepareStatement(sql)) {
            st.setInt(1, product.getItemId());
            st.setString(2, product.getName());
            st.setString(3, product.getStatus());
            st.setDouble(4, product.getPrice());
            st.setInt(5, product.getQuantity());
            java.sql.Date sqlDate = new java.sql.Date(product.getReleaseDate().getTime());
            st.setDate(6, sqlDate);
            st.setString(7, product.getDescribe());
            st.setString(8, product.getImage());
            st.setInt(9, product.getCategoryid());
            st.execute();
            st.close();

        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public Product get(int id) {
        try {
            String sql = "select * from items where itemid =?";

            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            rs.next();
            Product product = new Product(id,
                    rs.getString("name"), rs.getString("status"),
                    rs.getDouble("price"), rs.getInt("quantity"), rs.getDate("releasedate"),
                    rs.getString("describe"), rs.getString("image"), rs.getInt("categoryid"));

            return product;

        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }
    //edit

    public void edit(Product product) {
        try {
            String sql = "Update items set name = ?, status =?, price =?, quantity =?, releasedate =?"
                    + ", describe =?, image =?, categoryid =? where itemid =?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, product.getName());
            st.setString(2, product.getStatus());
            st.setDouble(3, product.getPrice());
            System.out.println(product.getPrice());
            st.setInt(4, product.getQuantity());
            java.sql.Date sqlDate = new java.sql.Date(product.getReleaseDate().getTime());
            st.setDate(5, sqlDate);
            st.setString(6, product.getDescribe());
            st.setString(7, product.getImage());
            st.setInt(8, product.getCategoryid());
            st.setInt(9, product.getItemId());
            st.execute();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public void delete(String id) {
        try {
            String sql = "DELETE FROM items WHERE itemid = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.execute();
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Product> getBestSellerItem() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT top 10 p.itemid, p.Name,p.status,p.price,p.quantity,p.releasedate,p.describe,p.image,p.categoryid, SUM(od.quantity) AS total_quantity_sold\n"
                    + "FROM items p\n"
                    + "JOIN orderdetails od ON p.itemid = od.itemid\n"
                    + "JOIN orders o ON od.orderid = o.orderid\n"
                    + "where p.quantity > 0"
                    + "GROUP BY p.itemid, p.Name,p.status,p.price,p.quantity,p.releasedate,p.describe,p.image,p.categoryid\n"
                    + "ORDER BY total_quantity_sold DESC";

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Product product = new Product(rs.getInt("itemid"),
                        rs.getString("name"), rs.getString("status"),
                        rs.getDouble("price"), rs.getInt("quantity"), rs.getDate("releasedate"),
                        rs.getString("describe"), rs.getString("image"), rs.getInt("categoryid"));

                list.add(product);
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return list;
    }

    public int getQUantityByItemid(int itemId) {

        try {
            String sql = "SELECT SUM(od.quantity) AS total_quantity_sold\n"
                    + "FROM invoice i\n"
                    + "JOIN orderdetails od ON i.orderid = od.orderid\n"
                    + "WHERE itemid=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, itemId);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt("total_quantity_sold");
            }
            rs.close();
            st.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return 0;
    }

    public List<Map<String, Object>> getTopProducts() {
        List<Map<String, Object>> products = new ArrayList<>();
        try {
            String sql = "SELECT TOP 10 i.itemid, i.name, i.image, SUM(od.quantity) AS total_quantity, SUM(od.quantity * i.price) AS total_revenue\n"
                    + "FROM orderdetails od\n"
                    + "JOIN items i ON od.itemid = i.itemid\n"
                    + "GROUP BY i.itemid, i.name, i.image\n"
                    + "ORDER BY total_quantity DESC;";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Map<String, Object> productData = new HashMap<>();
                productData.put("itemid", rs.getString("itemid"));
                productData.put("name", rs.getString("name"));
                productData.put("image", rs.getString("image"));
                productData.put("total_quantity", rs.getInt("total_quantity"));
                productData.put("total_revenue", rs.getDouble("total_revenue"));
                products.add(productData);
            }
            rs.close();
            st.close();
        } catch (Exception e) {
        }
        return products;
    }
}
