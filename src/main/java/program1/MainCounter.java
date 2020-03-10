
/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program1;

import org.objectweb.asm.ClassReader;

import java.io.FileInputStream;
import java.io.IOException;

public class MainCounter {
    public static void main(final String[] args) throws IOException {
        // Take input from first argument of programm
        FileInputStream is = new FileInputStream(args[0]);
        // read class
        ClassReader cr = new ClassReader(is);
        // initialize custom ClassVisitor
        AccessClassVisitor cw = new AccessClassVisitor();
        // start the analysing process
        cr.accept(cw, 0);
    }
}
