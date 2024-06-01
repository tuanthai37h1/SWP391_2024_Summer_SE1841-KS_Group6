/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.TourDB;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Tour;

/**
 *
 * @author tuanj
 */
@WebServlet(name="CreateTourServlet", urlPatterns={"/CreateTourServlet"})
public class CreateTourServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CreateTourServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateTourServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String tourName = request.getParameter("tourName");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        int price = Integer.parseInt(request.getParameter("price"));
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String imagePart = request.getParameter("image");
        
        // Xử lý dữ liệu, ví dụ lưu vào cơ sở dữ liệu, hoặc lưu ảnh vào thư mục
        // Đoạn code dưới đây chỉ là ví dụ, bạn cần thay thế với logic thực tế của bạn
        
        // Ví dụ lưu thông tin vào cơ sở dữ liệu
        TourDB tourDAO = new TourDB(); // TourDAO là class quản lý truy vấn đến cơ sở dữ liệu
        
        Tour tour = new Tour( id,tourName, description, location, price, startDate, endDate, imagePart);
        boolean success = tourDAO.addTour(tour);
        
        // Kiểm tra xem tour đã được tạo thành công hay không
        if (success) {
            // Nếu thành công, chuyển hướng đến trang thành công
            response.sendRedirect("list");
        } else {
            // Nếu không thành công, chuyển hướng đến trang lỗi hoặc hiển thị thông báo lỗi
            request.setAttribute("e", "nhập sai rồi nhập lại đi!");
            response.sendRedirect("error.jsp");
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
