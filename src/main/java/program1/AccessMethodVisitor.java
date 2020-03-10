/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program1;

import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;

import java.util.HashMap;

/**
 * Custom class MethodVisitor
 */
public class AccessMethodVisitor extends MethodVisitor {
    // a map to store the number of access with key is the field name and value is object of type Stat
    public static HashMap<String, Stat> fieldMap = new HashMap<String, Stat>();

    public AccessMethodVisitor(int api) {
        super(api);
    }

    @Override
    public void visitFieldInsn(int opcode, String owner, String name, String descriptor) {
        // If the field is accessed via getField or getStatic
        if (opcode == Opcodes.GETFIELD || opcode == Opcodes.GETSTATIC) {
            if (fieldMap.containsKey(name)) {
                fieldMap.get(name).incrementGetCount();
            } else {
                fieldMap.put(name, new Stat());
            }
            // If the field is accessed via putField or putStatic
        } else if (opcode == Opcodes.PUTFIELD || opcode == Opcodes.PUTSTATIC) {
            if (fieldMap.containsKey(name)) {
                fieldMap.get(name).incrementPutCount();
            } else {
                fieldMap.put(name, new Stat());
            }
        }
        super.visitFieldInsn(opcode, owner, name, descriptor);
    }

}
