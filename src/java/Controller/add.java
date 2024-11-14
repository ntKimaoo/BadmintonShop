/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Category;
import Model.Product;
import Model.User;
import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.taglibs.standard.tag.el.fmt.ParseDateTag;

/**
 *
 * @author kiennn
 */
public class add extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet add</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet add at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDAO categoryDAO = new CategoryDAO();
        List<Category> listc = categoryDAO.getAll();
        request.setAttribute("category", listc);
        request.getRequestDispatcher("add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        int id = productDAO.getMaxID();
        String name = request.getParameter("name");
        String status = request.getParameter("status");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String date = request.getParameter("releaseDate");
        String describe = request.getParameter("describe");
        String img = request.getParameter("image");
        String cateid = request.getParameter("cateid");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date releaseDate = null;
        try {
            releaseDate = dateFormat.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
            // Handle the error appropriately
        }
        Product product = new Product(id, name, status, Double.parseDouble(price),
                 Integer.parseInt(quantity), releaseDate, describe, img, Integer.parseInt(cateid));
        try {
            productDAO.add(product);
        } catch (Exception ex) {
            Logger.getLogger(add.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("manageproduct").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
