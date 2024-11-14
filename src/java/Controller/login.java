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
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kiennn
 */
public class login extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Cookie arr[] = request.getCookies();
        if (arr != null) {
            for (Cookie cookie : arr) {
                if (cookie.getName().equals("userC")) {
                    request.setAttribute("usernameC", cookie.getValue());
                }
                if (cookie.getName().equals("passC")) {
                    request.setAttribute("passwordC", cookie.getValue());
                }
            }
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String result = "";
        AccountDAO accountDAO = new AccountDAO();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = accountDAO.getUsername(username);
        if (user != null) {
            if (username.equals(user.getUsername()) && password.equals(user.getPassword())) {
                request.getSession().setAttribute("role", user.getRole());
                request.getSession().setAttribute("loggedInUser", username);
                request.getSession().setAttribute("customer_name", user.getCustomer_name());
                request.getSession().setAttribute("user", user);
                String remember = request.getParameter("remember");
                Cookie u = new Cookie("userC", username);
                Cookie p = new Cookie("passC", password);
                if (remember != null) {
                    u.setMaxAge(360);
                    p.setMaxAge(360);
                } else {
                    u.setMaxAge(0);
                    p.setMaxAge(0);
                }

                response.addCookie(u);
                response.addCookie(p);
                request.getRequestDispatcher("home").forward(request, response);
                
            } else {
                result = "Invalid username or password!!!";
                request.setAttribute("error", result);
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            result = "Invalid username or password!!!";
            request.setAttribute("error", result);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
