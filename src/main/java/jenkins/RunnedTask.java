package jenkins;

import java.io.FileNotFoundException;

public class RunnedTask {

    public static void main(String[] args) {

        String words = args[0];
        Person person = new Person();
        try {
            person.talk(words);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
