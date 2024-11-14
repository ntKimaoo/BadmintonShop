/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.Cart;
import Model.Item;
import Model.Product;
import Model.Wishlist;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author kiennn
 */
public class addtowishlist extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addtowishlist</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addtowishlist at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        Wishlist wishlist  = null;
        Object o = session.getAttribute("wishlist");
        String itemId = request.getParameter("itemid");
        if (o != null) {
            wishlist = (Wishlist) o;
        } else {
            wishlist = new Wishlist();
        }
        ProductDAO dao = new ProductDAO();
        Product p = dao.get(Integer.parseInt(itemId));
        List<Product> listWish = wishlist.getItems();
        wishlist.addItem(p);
        session.setAttribute("wishlist", wishlist);
        session.setAttribute("wishlistsize", listWish.size());
        request.getRequestDispatcher("home").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        Wishlist wishlist  = null;
        Object o = session.getAttribute("wishlist");
        String itemId = request.getParameter("itemid");
        if (o != null) {
            wishlist = (Wishlist) o;
        } else {
            wishlist = new Wishlist();
        }
        ProductDAO dao = new ProductDAO();
        Product p = dao.get(Integer.parseInt(itemId));
        List<Product> listWish = wishlist.getItems();
        wishlist.removeItem(p.getItemId());
        session.setAttribute("wishlist", wishlist);
        session.setAttribute("wishlistsize", listWish.size());
        request.getRequestDispatcher("home").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
