package design.pattern.observer;

public class Main {

    public static void main(String args[]) {
        Thermometer t1, t2;
        Thermostat s1, s2;
        t1 = new Thermometer("Thermometer 1", 70);
        t2 = new Thermometer("Thermometer 2", 65);
        s1 = new Thermostat("Thermostat 1");
        s2 = new Thermostat("Thermostat 2");
        t1.add(s1);
        t1.add(s2);
        t2.add(s2);
        t2.add(new Observer() {
            public void update(String name, int temp) {
                System.out.println("Anon: " + name + " temp " + temp);
            }
        });
        t2.add((String name, int temp) -> {
            System.out.println("Func: " + name + " temp: " + temp);
        });
        t1.updateTemp(72);
        t2.updateTemp(68);
        t2.remove(s2);
        t2.updateTemp(35);
    }

}
