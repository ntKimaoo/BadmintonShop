/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Cart;
import Model.DiscountCode;
import Model.Invoice;
import Model.Orders;
import Model.User;
import dal.DiscountDAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;

/**
 *
 * @author kiennn
 */
public class checkout extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet checkout</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checkout at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String coupon = request.getParameter("couponcode");
        DiscountDAO dcDAO = new DiscountDAO();
        HttpSession session = request.getSession();
        float discount = 0;
        List<DiscountCode> listDiscountCode = dcDAO.getAll();
        if (coupon != null) {
            for (DiscountCode discountCode : listDiscountCode) {
                if (discountCode.getCouponid().equalsIgnoreCase(coupon)) {
                    discount = discountCode.getDiscountPercent();
                }
            }
        }
        session.setAttribute("coupon", coupon);
        session.setAttribute("discount", discount);
        request.getRequestDispatcher("mycart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO ordao = new OrderDAO();
        DiscountDAO dcDAO = new DiscountDAO();
        HttpSession session = request.getSession();
        String coupon = (String) session.getAttribute("coupon");
        List<DiscountCode> listDiscountCode = dcDAO.getAll();
        float discount = 0;
        if (coupon != null) {
            for (DiscountCode discountCode : listDiscountCode) {
                if (discountCode.getCouponid().equalsIgnoreCase(coupon)) {
                    discount = discountCode.getDiscountPercent();
                }
            }
        } else {
            coupon = "unknown";
        }
        String address = request.getParameter("address");
        String paymentmethod = request.getParameter("paymentmethod");
        String note = request.getParameter("note");
        User user = null;
        Object u = session.getAttribute("user");
        if (u != null) {
            user = (User) u;
            Cart cart = null;
            Object o = session.getAttribute("cart");
            if (o != null) {
                cart = (Cart) o;
            }
            double tmpPrice = cart.getTotalMoney();
            double totalPrice = tmpPrice - (discount * tmpPrice / 100);
            int totalQuantity = cart.getTotalQuantity();
            int orderid = ordao.getMaxID();
            Orders order = new Orders(orderid, user.getCustomer_name(), user.getEmail(), user.getPhone_number(), address, note, totalQuantity, tmpPrice, totalPrice, user.getId(), paymentmethod, coupon);

            LocalDate Date = java.time.LocalDate.now();
            String date = Date.toString();
            int invoiceId = ordao.getMaxInvoiceID();
            Invoice i = new Invoice(invoiceId, date, orderid);
            
            
            ordao.addOrder(order, cart, user);
            ordao.exportInvoice(i, order);
            session.removeAttribute("cart");
            session.removeAttribute("coupon");
            session.removeAttribute("discount");
            session.removeAttribute("tmpPrice");
            session.setAttribute("size", 0);
            if(paymentmethod.equals("PM1")){
                response.sendRedirect("success.jsp");
            }else{
                response.sendRedirect("qrcode.jsp");
            }
        } else {
            response.sendRedirect("login");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
