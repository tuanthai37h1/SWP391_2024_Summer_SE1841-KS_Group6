/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tuanj
 */
public class Tour_Euro {
    private int id;
    private String tourname;
    private String description;
    private String location;
    private int price;
    private String combo;
    private String startDate;

    private String image;

    public Tour_Euro() {
    }

    public Tour_Euro(int id, String tourname, String description, String location, int price, String combo, String startDate, String image) {
        this.id = id;
        this.tourname = tourname;
        this.description = description;
        this.location = location;
        this.price = price;
        this.combo = combo;
        this.startDate = startDate;
        this.image = image;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTourname() {
        return tourname;
    }

    public void setTourname(String tourname) {
        this.tourname = tourname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCombo() {
        return combo;
    }

    public void setCombo(String combo) {
        this.combo = combo;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Tour_Asia{" + "id=" + id + ", tourname=" + tourname + ", description=" + description + ", location=" + location + ", price=" + price + ", combo=" + combo + ", startDate=" + startDate + ", image=" + image + '}';
    }
    
}
