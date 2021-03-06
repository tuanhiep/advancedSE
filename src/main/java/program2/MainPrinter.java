
/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program2;

import org.objectweb.asm.ClassReader;

import java.io.FileInputStream;
import java.io.IOException;

public class MainPrinter {
    public static void main(final String[] args) throws IOException {
        // Take input from first argument of programm
        FileInputStream is = new FileInputStream(args[0]);
        // read class
        ClassReader cr = new ClassReader(is);
        // initialize custom ClassVisitor
        ControlFlowClassVisitor cw = new ControlFlowClassVisitor();
        // start the analysing process
        cr.accept(cw, 0);
    }
}
