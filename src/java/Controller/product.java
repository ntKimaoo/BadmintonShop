/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Category;
import Model.Product;
import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author kiennn
 */
public class product extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet product</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet product at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO productDao = new ProductDAO();
        HttpSession session = request.getSession();
        CategoryDAO categoryDAO = new CategoryDAO();
        String loaiSanPham=request.getParameter("name");
        
        String indexPage=request.getParameter("index");
        if(indexPage==null){
            indexPage="1";
        }
        int index=Integer.parseInt(indexPage);
        int countTotalItem;
        List<Product> listPage;
        if(loaiSanPham==null){
            listPage = productDao.getAll(index,12);
            countTotalItem=productDao.getAllTotalItem();
        }
        else{
            listPage = productDao.pagingItem(loaiSanPham, index);
            countTotalItem=productDao.getTotalItem(loaiSanPham);
        }
        int endPage=(countTotalItem/12);
        if(countTotalItem%12!=0){
            endPage++;
        }
        session.setAttribute("endP", endPage);
        session.setAttribute("pageIndex", index);
        session.setAttribute("loai", loaiSanPham);
        
        List<Category> listCategory = categoryDAO.getAll();
        session.setAttribute("totalItem", countTotalItem);
        session.setAttribute("listProduct", listPage);
        session.setAttribute("listCategory", listCategory);
        Map<String, Integer> categoryProductCounts = new HashMap<>();
        for (Category category : listCategory) {
            int count;
            if(loaiSanPham==null){
                count = categoryDAO.countByCategory1(category.getName());
            }
            else{
                count = categoryDAO.countByCategory(loaiSanPham,category.getName());
            }
            
            categoryProductCounts.put(category.getName(), count);
        }
        session.setAttribute("categoryProductCounts", categoryProductCounts);
        request.getRequestDispatcher("shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
