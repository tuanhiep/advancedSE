package design.pattern.observer;

import java.util.Vector;

public class Thermometer implements Subject {

    String name;
    int curTemperature;
    Vector<Observer> observers;

    public Thermometer(String name, int initialTemp) {
        this.name = name;
        curTemperature = initialTemp;
        observers = new Vector<Observer>();
    }


    public void updateTemp(int newTemp) {
        int oldTemp = curTemperature;
        curTemperature = newTemp;
        if (oldTemp != newTemp)
            notifyObservers();
    }

    public void add(Observer ob) {
        observers.add(ob);
    }

    public void remove(Observer ob) {
        observers.remove(ob);
    }

    public void notifyObservers() {
        for (Observer observer : observers)
            observer.update(name, curTemperature);
    }


}


