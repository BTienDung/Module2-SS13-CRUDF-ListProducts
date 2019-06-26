package com.codegym.model;

public class Product {
    private int id;
    private String name;
    private float price;
    private String description;
    private String company;
    private String avatar;

    public Product(){};

    public Product(int id, String name, float price, String description, String company, String avatar) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.company = company;
        this.avatar = avatar;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }
}
