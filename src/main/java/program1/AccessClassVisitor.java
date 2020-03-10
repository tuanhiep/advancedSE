/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program1;

import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.MethodVisitor;

import java.util.Iterator;
import java.util.Map;

import static org.objectweb.asm.Opcodes.ASM7;

/**
 * Custom ClassVisitor
 */
public class AccessClassVisitor extends ClassVisitor {
    public AccessClassVisitor() {
        super(ASM7);
    }

    /**
     * Override the visitMethod to return custom methodVisitor
     *
     * @param access
     * @param name
     * @param descriptor
     * @param signature
     * @param exceptions
     * @return
     */
    @Override
    public MethodVisitor visitMethod(int access, String name, String descriptor, String signature, String[] exceptions) {
        return new AccessMethodVisitor(ASM7);
    }

    /**
     * When end visiting the class, print the statistic of number of accesses
     */
    @Override
    public void visitEnd() {
        Iterator it = AccessMethodVisitor.fieldMap.entrySet().iterator();
        int totalGetCount = 0, totalPutCount = 0;
        System.out.println("Name" + "\t\t" + "R" + "\t" + "W" + "\t" + "T");
        // Iterate the map to print out the statistic of number of accesses
        while (it.hasNext()) {
            Map.Entry<String, Stat> pair = (Map.Entry) it.next();
            Stat stat = pair.getValue();
            System.out.println(pair.getKey() + "\t\t" + stat.getGetCount() + "\t" + stat.getPutCount() + "\t" + (stat.getPutCount() + stat.getGetCount()));
            totalGetCount += stat.getGetCount();
            totalPutCount += stat.getPutCount();
        }
        System.out.println("TOTAL" + "\t\t" + totalGetCount + "\t" + totalPutCount + "\t" + (totalGetCount + totalPutCount));

        super.visitEnd();
    }
}
