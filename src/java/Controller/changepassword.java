/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

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
public class changepassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet changepassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet changepassword at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("changepassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String password = request.getParameter("OldPassword");
        String newpassword = request.getParameter("NewPassword");
        String cfpassword = request.getParameter("CfPassword");
        String id = request.getParameter("accountId");
        AccountDAO dao = new AccountDAO();
        String currentPassword = dao.getCurrentPassword(Integer.parseInt(id)); 

        // Check if the old password is correct
        if (!password.equals(currentPassword)) {
            System.out.println(currentPassword);
            request.setAttribute("errorMessage", "Old password is incorrect.");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            return;
        }

        // Check if new password and confirmation password match
        if (!newpassword.equals(cfpassword)) {
            request.setAttribute("errorMessage", "New password and confirmation password do not match.");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
            return;
        }

        if (password.equals(currentPassword)&&newpassword.equals(cfpassword)) {
            dao.setNewPassword(newpassword, Integer.parseInt(id));
            request.setAttribute("successMessage", "Password changed successfully.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Password change failed. Please try again.");
            request.getRequestDispatcher("changepassword.jsp").forward(request, response);
        }
    }

    

}
