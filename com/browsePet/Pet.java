package com.browsePet;

import java.sql.Blob;

public class Pet {

    private final int id;
    private final String name;
    private final String breed;
    private final int age;
    private final String description;
    private final Blob image;

    public Pet(int id, String name, String breed, int age, String description, Blob image) {
        this.id = id;
        this.name = name;
        this.breed = breed;
        this.age = age;
        this.description = description;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getBreed() {
        return breed;
    }

    public int getAge() {
        return age;
    }

    public String getDescription() {
        return description;
    }

    public Blob getImage() {
        return image;
    }
}
