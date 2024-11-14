/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.Category;
import Model.Product;
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

/**
 *
 * @author kiennn
 */
public class edit extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet edit</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet edit at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String itemid = request.getParameter("itemId");
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.get(Integer.parseInt(itemid));
        CategoryDAO categoryDAO = new CategoryDAO();
        List<Category> listc = categoryDAO.getAll();
        request.setAttribute("category", listc);
        request.setAttribute("product", product);
        request.getRequestDispatcher("edit.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String id = request.getParameter("itemId");
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
        }
        Product product = new Product(Integer.parseInt(id), name, status, Double.parseDouble(price),
                 Integer.parseInt(quantity), releaseDate, describe, img, Integer.parseInt(cateid));
        ProductDAO productDAO = new ProductDAO();
        productDAO.edit(product);
        response.sendRedirect("manageproduct");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
