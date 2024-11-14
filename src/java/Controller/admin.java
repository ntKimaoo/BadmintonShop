/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import Model.Invoice;
import Model.Orders;
import Model.User;
import dal.AccountDAO;
import dal.OrderDAO;
import dal.ProductDAO;
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
public class admin extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet admin</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet admin at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        OrderDAO odDAO = new OrderDAO();
        ProductDAO pdDAO = new ProductDAO();
        AccountDAO acDao = new AccountDAO();
        HttpSession session = request.getSession();
        LocalDate currentDate = LocalDate.now();
        int currentMonth = currentDate.getMonthValue();
        int currentYear = currentDate.getYear();
        
        double tongDoanhThu=odDAO.getTotalDoanhThu();
        int soLuongDaBan=odDAO.getSoLuongDaBan();
        int soLuongAccount=acDao.getSoLuongAccount();
        int soLuongDaBanTrongThang=odDAO.getSoLuongDaBanTrongThang(currentMonth, currentYear);
        
        List<Orders> ordersList = odDAO.getAllOrders();
        List<Invoice> invoiceList = odDAO.getAllInvoice();
        
        session.setAttribute("tongDoanhThu", tongDoanhThu);
        session.setAttribute("soLuongDaBan", soLuongDaBan);
        session.setAttribute("soLuongAccount", soLuongAccount);
        session.setAttribute("soLuongDaBanTrongThang", soLuongDaBanTrongThang);
        
        session.setAttribute("ordersList", ordersList);
        session.setAttribute("invoiceList", invoiceList);

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
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
