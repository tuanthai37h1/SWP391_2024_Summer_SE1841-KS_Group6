/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;


import java.sql.*;
import java.util.ArrayList;
import model.Profiles;
/**
 *
 * @author tuanj
 */
public class ProfileDAO extends DBContext{

    Connection cnn;
    PreparedStatement ps;
    ResultSet rs;

    public ProfileDAO() {
        connect();
    }

    private void connect() {
        try {
            cnn = connection;
            if (cnn != null) {
                System.out.println("Connect success");
            } else {
                System.out.println("Connect fail");
            }
        } catch (Exception e) {
            System.out.println("Connect error:" + e.getMessage());
        }
    }

    public ArrayList<Profiles> getListProfile() {
        ArrayList<Profiles> data = new ArrayList<>();

        try {
            String strSQL = "select * from Profiles";
            ps = cnn.prepareStatement(strSQL);
            rs = ps.executeQuery();
            while (rs.next()) {
                int profileId = rs.getInt(1);
                int userId = rs.getInt(2);
                String firstName = rs.getString(3);
                String lastName = rs.getString(5);
                String address = rs.getString(4);
                String phoneNumber = rs.getString(6);
                Profiles p = new Profiles(profileId, userId, firstName, lastName, address, phoneNumber);
                data.add(p);
            }
        } catch (Exception e) {
            System.out.println("getListPofiles:" + e.getMessage());
        }
        return data;
    }

    public void update(Profiles p) {
        try {
            String strSQL = "UPDATE [dbo].[Profiles]\n"
                    + "   SET [user_id] = ?\n"
                    + "      ,[first_name] = ?\n"
                    + "      ,[last_name] = ?\n"
                    + "      ,[address] = ?\n"
                    + "      ,[phone_number] = ?\n"
                    + " WHERE [profile_id] = ?";
            ps = cnn.prepareStatement(strSQL);
            ps.setInt(1, p.getUserId());
            ps.setString(2, p.getFirstName());
            ps.setString(3, p.getLastName());
            ps.setString(4, p.getAddress());
            ps.setString(5, p.getPhoneNumber());
            ps.setInt(6, p.getProfileId());
            ps.execute();
        } catch (Exception e) {
            System.out.println("update:" + e.getMessage());
        }
    }

    public Profiles getProfileById(int id) {
        try {
            String strSQL = "SELECT * FROM Profiles WHERE profile_id = ?";
            ps = cnn.prepareStatement(strSQL);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int profileId = rs.getInt(1);
                int userId = rs.getInt(2);
                String firstName = rs.getString(3);
                String lastName = rs.getString(4);
                String address = rs.getString(5);
                String phoneNumber = rs.getString(6);
                Profiles p = new Profiles(profileId, userId, firstName, lastName, address, phoneNumber);
                return p;
            }
        } catch (Exception e) {
            System.out.println("getProfileById:" + e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        ProfileDAO dao = new ProfileDAO();
        ArrayList<Profiles> list = dao.getListProfile();
        for (Profiles profiles : list) {
            System.out.println(profiles);
        }
    }
}
