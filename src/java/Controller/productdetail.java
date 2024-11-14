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
import java.util.List;

/**
 *
 * @author kiennn
 */
public class productdetail extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet productdetail</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet productdetail at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String itemId=request.getParameter("itemid");
        ProductDAO dao = new ProductDAO();
        Product product = dao.get(Integer.parseInt(itemId));
        List<Product> list=dao.getSameProduct(product.getCategoryid(),product.getItemId());
        String loaiItem = getLoaiSanPham(product);
        System.out.println(loaiItem);
        request.setAttribute("loaiItem", loaiItem);
        request.setAttribute("listSame", list);
        request.setAttribute("product", product);
        request.getRequestDispatcher("product.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    public String getLoaiSanPham(Product p){
        if(p.getName().contains("Vợt")){
            return "Vợt";
        }else if (p.getName().contains("Áo")) {
            return "Áo";
        }else if (p.getName().contains("Giày")) {
            return "Giày";
        }else{
            return "phụ%20kiện";
        }
    }
}
