package jenkins;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Person {

    public void talk(String words) throws FileNotFoundException {
        File file = new File("text.txt");
        Scanner sc = new Scanner(file);
        String text = "Given: ";
        while (sc.hasNextLine()) {
            text += sc.nextLine();
        }

        System.out.println(text + "\n I speak: " + words);
    }
}
