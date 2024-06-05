/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.TourDB;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Tour;

/**
 *
 * @author tuanj
 */
public class updateTour extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet updateTour</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateTour at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

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
        String id = request.getParameter("sid");
        int sid  = Integer.parseInt(id);
        
        
       
        if (id != null && !id.trim().isEmpty()) {
            
            Tour tour = new TourDB().selectTour(sid);
            request.setAttribute("update", tour);
            request.getRequestDispatcher("update.jsp").forward(request, response);
        } else {
            response.sendRedirect("list");
        }
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
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String tourName = request.getParameter("tourName");
            String description = request.getParameter("description");
            String location = request.getParameter("location");
            int price = Integer.parseInt(request.getParameter("price"));
            String startDate = request.getParameter("startDate");
            String endDate = request.getParameter("endDate");
            String image = request.getParameter("image");

            Tour tour = new Tour();
            tour.setId(id);
            tour.setTourname(tourName);
            tour.setDescription(description);
            tour.setLocation(location);
            tour.setPrice(price);
            tour.setStartDate(startDate);
            tour.setEndDate(endDate);
            tour.setImage(image);

            TourDB tourDB = new TourDB();
            tourDB.updateTour(tour);

            response.sendRedirect("list");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("errorPage.jsp");
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
