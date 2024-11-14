/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Cart;
import Model.Item;
import Model.Product;
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
public class addtocart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addtocart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addtocart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = null;
        Object o = session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }
        String numberOfItemt = request.getParameter("numberOfItem");
        String itemIdt = request.getParameter("itemId");
        String size = request.getParameter("size");
        int numberOfItem, itemId;
        try {
            if (numberOfItemt == null) {
                numberOfItem = 1;
            } else {
                numberOfItem = Integer.parseInt(numberOfItemt);
            }
            if (size == null) {
                size = "unknown";
            }
            itemId = Integer.parseInt(itemIdt);

            ProductDAO dao = new ProductDAO();
            Product p = dao.get(itemId);
            double price = p.getPrice();
            Item t = new Item(p, numberOfItem, size, price);
            cart.addItem(t);
        } catch (Exception e) {
            numberOfItem = 1;
        }
        double tmpPrice = cart.getTotalMoney();
        List<Item> listCart = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("tmpPrice", tmpPrice);
        session.setAttribute("size", listCart.size());
        if (session.getAttribute("loai") == null) {
            request.getRequestDispatcher("home").forward(request, response);
        } else {
            request.getRequestDispatcher("shop?name=" + session.getAttribute("loai")).forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
