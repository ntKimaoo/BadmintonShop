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

import java.util.Properties;
import java.util.UUID;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author kiennn
 */
public class forgotpassword extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet forgotpassword</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet forgotpassword at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String email = request.getParameter("email");

        // Generate a new temporary password
        String newPassword = UUID.randomUUID().toString().substring(0, 8);

        // Save the new password to the database (pseudo-code)
        // updatePasswordInDatabase(email, newPassword);

        // Send the email (simplified example)
        sendResetEmail(email, newPassword);
        new AccountDAO().setMatKhauMoi(newPassword, email);
        String success="New password has been sent to your email.";
        request.setAttribute("success", success);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    private void sendResetEmail(String email, String newPassword) {
        // Email sending logic
        String subject = "New Password ShopBadminton";
        String content = "Your new password is: " + newPassword;

        // Set up your SMTP server and send the email (this is a simplified example)
        // For production use, you might want to use a library like JavaMail
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true"); // Enable STARTTLS
        
        Session session = Session.getDefaultInstance(properties, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("kientrung2004x@gmail.com", "gpzl hdyu ohdp hkeb");
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("kientrung2004x@gmail.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
            message.setSubject(subject);
            message.setText(content);
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }

}
