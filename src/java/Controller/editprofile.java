/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.User;
import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author kiennn
 */
public class editprofile extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet editprofile</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editprofile at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("editprofile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("accountId");
        String customer_name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String birthdate = request.getParameter("birthdate");
        String role = request.getParameter("role");
        User user=null;
        try {
            user = new User(Integer.parseInt(id), customer_name, phone, username, password, Integer.parseInt(role), sex, email, birthdate);
            AccountDAO ao = new AccountDAO();
            ao.edit(user);
        } catch (Exception e) {
            System.out.println(e);
        }
        request.getSession().setAttribute("user",user);
        response.sendRedirect("profile");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
