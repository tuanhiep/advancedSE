package design.pattern.observer;

public class Thermostat implements Observer {

    String name;

    public Thermostat(String name) {
        this.name = name;
    }

    public void update(String name, int temp) {
        System.out.println(this.name + " is notified by " + name + " of a temp change to " + temp);
    }

}

