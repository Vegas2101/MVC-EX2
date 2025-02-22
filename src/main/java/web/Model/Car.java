package web.Model;

public class Car {
    private int age;
    private String model;
    private String color;


    public Car(int age, String model, String color) {
        this.age = age;
        this.model = model;
        this.color = color;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int id) {
        this.age = id;
    }
}
