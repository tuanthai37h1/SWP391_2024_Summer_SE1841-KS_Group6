/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Tour;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author tuanj
 */
public class TourDB extends DBContext {

    public ArrayList<Tour> getList() {
        ArrayList<Tour> list = new ArrayList<>();
        try {
            String sql = "select * from Tour";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setId(rs.getInt("tour_id"));
                t.setTourname(rs.getString("tour_name"));
                t.setDescription(rs.getString("description"));
                t.setLocation(rs.getString("location"));
                t.setPrice(rs.getInt("price"));
                t.setStartDate(rs.getString("start_date"));
                t.setEndDate(rs.getString("end_date"));
                t.setImage(rs.getString("image"));
                list.add(t);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }

    public boolean addTour(Tour t) {
        boolean isSuccess = false;
        try {
            String sql = "INSERT INTO [dbo].[Tour]\n"
                    + "           ([tour_name]\n"
                    + "           ,[description]\n"
                    + "           ,[location]\n"
                    + "           ,[price]\n"
                    + "           ,[start_date]\n"
                    + "           ,[end_date]\n"
                    + "           ,[image])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stm = connection.prepareStatement(sql);

            stm.setString(1, t.getTourname());
            stm.setString(2, t.getDescription());
            stm.setString(3, t.getLocation());
            stm.setInt(4, t.getPrice());
            stm.setString(5, t.getStartDate());
            stm.setString(6, t.getEndDate());
            stm.setString(7, t.getImage());

            isSuccess = stm.executeUpdate() == 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    public boolean deleteID(int id) {
        boolean isSuccess = false;
        try {
            String sql = "DELETE FROM [dbo].[Tour]\n"
                    + "      WHERE tour_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            isSuccess = stm.executeUpdate() == 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    public void updateTour(Tour tour) {
        String sql = "UPDATE [dbo].[Tour]\n"
                + "   SET [tour_name] = ?,\n"
                + "       [description] = ?,\n"
                + "       [location] = ?,\n"
                + "       [price] = ?,\n"
                + "       [start_date] = ?,\n"
                + "       [end_date] = ?,\n"
                + "       [image] = ?\n"
                + " WHERE [tour_id] = ?";

        try (PreparedStatement stm = connection.prepareStatement(sql)) {
            stm.setString(1, tour.getTourname());
            stm.setString(2, tour.getDescription());
            stm.setString(3, tour.getLocation());
            stm.setInt(4, tour.getPrice());
            stm.setString(5, tour.getStartDate());
            stm.setString(6, tour.getEndDate());
  
            stm.setString(7, tour.getImage());
            stm.setInt(8, tour.getId());

            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception properly, e.g., logging or rethrowing as a custom exception
        }
    }

    public Tour selectTour(int id) {

        try {
            String sql = "SELECT * FROM [dbo].[Tour]\n"
                    + "      WHERE tour_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Tour t = new Tour();
                t.setId(rs.getInt("tour_id"));
                t.setTourname(rs.getString("tour_name"));
                t.setDescription(rs.getString("description"));
                t.setLocation(rs.getString("location"));
                t.setPrice(rs.getInt("price"));
                t.setStartDate(rs.getString("start_date"));
                t.setEndDate(rs.getString("end_date"));
                t.setImage(rs.getString("image"));
                return t;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
//        Tour t = new Tour("Hà Nội VN", "people lovely", "Việt Nam", 150, Date.valueOf(LocalDate.now()), Date.valueOf(LocalDate.now()));
//        System.out.println(new TourDB().addTour(t));
//        for (Tour tour : new TourDB().getList()) {
//            System.out.println(tour.toString());
//        }
        TourDB t = new TourDB();
        Tour tt = t.selectTour(1);

        System.out.println(tt);

    }
}
