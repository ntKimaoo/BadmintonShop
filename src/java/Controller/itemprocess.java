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
public class itemprocess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet itemprocess</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet itemprocess at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = null;
        Object o = session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }
        int num, itemid;
        String size=request.getParameter("sizeOfItem");
        try {
            num = Integer.parseInt(request.getParameter("num"));
            itemid = Integer.parseInt(request.getParameter("id"));
            if (num == -1 && cart.getQuantityById(itemid) <= 1) {
                cart.removeItem(itemid);
            } else {
                ProductDAO dao = new ProductDAO();
                Product p = dao.get(itemid);
                double price = p.getPrice();
                Item t = new Item(p, num, size, price);
                cart.addItem(t);
            }
        } catch (Exception e) {
        }
        double tmpPrice= cart.getTotalMoney();
        List<Item> list = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("tmpPrice", tmpPrice);
        session.setAttribute("size", list.size());
        request.getRequestDispatcher("mycart.jsp").forward(request, response);
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
        int itemid = Integer.parseInt(request.getParameter("itemid"));
        cart.removeItem(itemid);
        List<Item> list = cart.getItems();
        double tmpPrice= cart.getTotalMoney();
        session.setAttribute("cart", cart);
        session.setAttribute("size", list.size());
        session.setAttribute("tmpPrice", tmpPrice);
        request.getRequestDispatcher("mycart.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
