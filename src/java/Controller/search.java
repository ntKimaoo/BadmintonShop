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
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author kiennn
 */
public class search extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet search</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet search at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String resultSearch = request.getParameter("name");
        HttpSession session = request.getSession();
        ProductDAO productDAO = new ProductDAO();
        String indexPage=request.getParameter("index");
        if(indexPage==null){
            indexPage="1";
        }
        int index=Integer.parseInt(indexPage);
        int countTotalItem=productDAO.getTotalItem(resultSearch);
        int endPage=(countTotalItem/12);
        if(countTotalItem%12!=0){
            endPage++;
        }
        session.setAttribute("endP", endPage);
        session.setAttribute("pageIndex", index);
        List<Product> list = productDAO.searchItemByName(resultSearch,index,12);
        request.setAttribute("searchFound", resultSearch);
        session.setAttribute("listProduct", list);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String resultSearch = request.getParameter("searchbyname");
        ProductDAO productDAO = new ProductDAO();
        List<Product> list = productDAO.searchInManage(resultSearch);
        request.setAttribute("listProduct", list);
        request.getRequestDispatcher("manageproduct.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
