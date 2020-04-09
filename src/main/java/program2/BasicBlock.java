/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program2;

import org.objectweb.asm.tree.AbstractInsnNode;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * This class represent the basic block of method
 */
public class BasicBlock {
    private int id;
    private List<AbstractInsnNode> members;
    private Set<Integer> indexBasicBlockSuccessors ;
    private List<Integer> indexInsnSuccessors;

    public BasicBlock(int id, List<AbstractInsnNode> members) {
        this.id = id;
        this.members = members;
        this.indexBasicBlockSuccessors=new HashSet<Integer>();
        this.indexInsnSuccessors= new ArrayList<Integer>();
    }

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<AbstractInsnNode> getMembers() {
        return members;
    }

    public void setMembers(List<AbstractInsnNode> members) {
        this.members = members;
    }


    public List<Integer> getIndexInsnSuccessors() {
        return indexInsnSuccessors;
    }

    public void setIndexInsnSuccessors(List<Integer> indexInsnSuccessors) {
        this.indexInsnSuccessors = indexInsnSuccessors;
    }

    public Set<Integer> getIndexBasicBlockSuccessors() {
        return indexBasicBlockSuccessors;
    }

    public void setIndexBasicBlockSuccessors(Set<Integer> indexBasicBlockSuccessors) {
        this.indexBasicBlockSuccessors = indexBasicBlockSuccessors;
    }
}
