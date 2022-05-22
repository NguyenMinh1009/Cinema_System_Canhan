/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAL.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Cookie;
import model.Account;

/**
 *
 * @author Quan
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//            request.setAttribute("mess", "");
        
            request.getRequestDispatcher("view/login.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //logout khi login vào acc khác
        request.getSession().invalidate();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Cookie c_userd = new Cookie("email", "");
        Cookie c_passd = new Cookie("password", "");
        c_userd.setMaxAge(0);
        c_passd.setMaxAge(0);
        response.addCookie(c_userd);
        response.addCookie(c_passd);

        //login
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        AccountDAO db = new AccountDAO();
        Account account = db.getAccount(email, pass);
        String mess  ="";
        if (account != null) {
            request.getSession().setAttribute("account", account);

            String remember = request.getParameter("remember");
            if (remember != null) {
                jakarta.servlet.http.Cookie c_email = new jakarta.servlet.http.Cookie("email", email);
                jakarta.servlet.http.Cookie c_pass = new jakarta.servlet.http.Cookie("password", pass);
                c_email.setMaxAge(24 * 3600 * 7);
                c_pass.setMaxAge(24 * 3600 * 7);
                response.addCookie(c_email);
                response.addCookie(c_pass);
            }

            response.sendRedirect("home");  //sau chỉnh dispatcher 
               //response.getWriter().println("login successful");
        } else {
            mess = "Thông tin đăng nhập sai, hãy đăng nhập lại!";
            request.setAttribute("mess", mess);
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
