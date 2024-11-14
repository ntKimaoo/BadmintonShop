/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Product;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kiennn
 */
public class category extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet category</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet category at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDAO = new ProductDAO();
        String[] selectedCategories = request.getParameterValues("category");
        String priceRange = request.getParameter("priceRange");
        
        HttpSession session = request.getSession();
        String loaiSanPham=(String)session.getAttribute("loai");
        System.out.println(loaiSanPham);
        List<Product> listProductFind = new ArrayList<>();
        double minPrice = 0;
        double maxPrice = Double.MAX_VALUE;

        if (priceRange != null) {
            switch (priceRange) {
                case "500-1000":
                    minPrice = 500;
                    maxPrice = 1000;
                    break;
                case "1000-3500":
                    minPrice = 1000;
                    maxPrice = 3500;
                    break;
                case "3500-5000":
                    minPrice = 3500;
                    maxPrice = 5000;
                    break;
                case "5000-6500":
                    minPrice = 5000;
                    maxPrice = 6500;
                    break;    
                case "6500-10000":
                    minPrice = 6500;
                    maxPrice = 10000;
                    break;    
            }
        }
        if (selectedCategories != null) {
            for (String selectedCategory : selectedCategories) {
                List<Product> products = productDAO.getByCategoryAndPrice(selectedCategory, minPrice, maxPrice,loaiSanPham);
                // Add all the products to the list
                listProductFind.addAll(products);
            }
        } else {
            // If no categories are selected, get products by price range only
            listProductFind = productDAO.getByPriceRange(minPrice, maxPrice,loaiSanPham);
        }
        request.setAttribute("foundList", listProductFind);
        request.setAttribute("loai", loaiSanPham);
        request.setAttribute("listProduct", listProductFind);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
