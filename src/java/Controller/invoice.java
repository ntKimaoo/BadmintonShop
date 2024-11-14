/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.Cart;
import Model.Invoice;
import Model.OrderDetails;
import Model.Orders;
import Model.Product;
import dal.OrderDAO;
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
public class invoice extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet invoice</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet invoice at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        int orderid=Integer.parseInt(request.getParameter("orderId"));
        
        OrderDAO odDao = new OrderDAO();
        
        Invoice hoadon = odDao.getInvoice(orderid);
        List<OrderDetails> listodt= odDao.getListOrdersDetail(orderid);
        List<Product> buyedProduct=new ArrayList<>();
        Orders o = odDao.getOrderById(orderid);
        for (OrderDetails orderDetails : listodt) {
            buyedProduct.add(new ProductDAO().get(orderDetails.getItemid()));
        }
        session.setAttribute("hoadon", hoadon);
        session.setAttribute("buyedProduct", buyedProduct);
        session.setAttribute("order", o);
        session.setAttribute("listodt", listodt);
        
        request.getRequestDispatcher("invoice.jsp").forward(request, response);
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

}
