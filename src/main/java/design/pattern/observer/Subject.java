package design.pattern.observer;

public interface Subject {
    public void add(Observer ob);

    public void remove(Observer ob);

    public void notifyObservers();
}

