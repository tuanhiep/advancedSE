/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program2;

import org.objectweb.asm.ClassVisitor;
import org.objectweb.asm.MethodVisitor;

import static org.objectweb.asm.Opcodes.ASM7;

/**
 * Custom ClassVisitor
 */
public class ControlFlowClassVisitor extends ClassVisitor {
    public ControlFlowClassVisitor() {
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
        return new ControlFlowMethodVisitor("Hiep", access, name, descriptor, new ControlFlowMethodVisitor(ASM7));
    }


    /**
     * When end visiting the class, print the statistic of number of accesses
     */
    @Override
    public void visitEnd() {
    }
}
