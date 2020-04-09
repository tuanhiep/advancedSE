/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program2;


import org.objectweb.asm.util.*;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.MethodNode;
import org.objectweb.asm.tree.analysis.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static org.objectweb.asm.Opcodes.ASM7;

/**
 * Custom class MethodVisitor
 */
public class ControlFlowMethodVisitor extends MethodVisitor {
    String owner;
    MethodVisitor next;

    public ControlFlowMethodVisitor(int api) {
        super(api);
    }

    public ControlFlowMethodVisitor(int api, MethodVisitor methodVisitor) {
        super(api, methodVisitor);
        this.next = mv;
    }

    public ControlFlowMethodVisitor(String owner, int access, String name,
                                    String desc, MethodVisitor mv) {
        super(ASM7, new MethodNode(access, name, desc, null, null));
        this.owner = owner;
        next = mv;
    }

    @Override
    public void visitEnd() {
        MethodNode mn = (MethodNode) mv;
        Analyzer<BasicValue> a = new MyAnalyser(new BasicInterpreter());
        try {
            System.out.println("For method: " + mn.name);
            a.analyze(owner, mn);
            Frame<BasicValue>[] frames = a.getFrames();
            AbstractInsnNode[] insns = mn.instructions.toArray();
            List<BasicBlock> list = constructBasicBlock(frames, insns);
            printBasicBlock(list, frames);
            int cyclomaticComplexity = computeCyclomaticComplexity(frames);
            System.out.println("The cyclomatic complexity of control flow graph: "+ cyclomaticComplexity);
        } catch (AnalyzerException e) {
            e.printStackTrace();
        }
//        visitEndDebug();

    }

    /**
     * Get the cyclomatic Complexity of control flow graph
     * Be careful that, this control flow graph consider each instruction is a node, it's not
     * the graph of basic blocks
     * @param frames
     * @return
     */
    private int computeCyclomaticComplexity(Frame<BasicValue>[] frames) {
        int edges = 0;
        int nodes = 0;
        for (int i = 0; i < frames.length; ++i) {
            if (frames[i] != null) {
                edges += ((Node<BasicValue>) frames[i]).successors.size();
                nodes += 1;
            }
        }
        return edges - nodes + 2;
    }

    /**
     * To print Basic Blocks of method with its successors
     *
     * @param list
     * @param frames
     */
    private void printBasicBlock(final List<BasicBlock> list, Frame<BasicValue>[] frames) {
        for (int i = 0; i < list.size(); i++) {
            BasicBlock basicBlock = list.get(i);
            List<AbstractInsnNode> members = basicBlock.getMembers();
            for (int j = 0; j < members.size(); j++) {
                if (members.get(j).getOpcode() != -1) {
                    System.out.println(basicBlock.getId() + ": " + convertOpcodeToString(members.get(j).getOpcode()));
                }
            }
            String s = "(succ: ";
            for (int indexBasicBlockSuccessor : basicBlock.getIndexBasicBlockSuccessors()) {
                if ("(succ: ".equals(s)) {
                    s += indexBasicBlockSuccessor;
                } else {
                    s += "," + indexBasicBlockSuccessor;
                }
            }
            s += ")";
            System.out.println(s);
        }
        System.out.println("Total number of basic blocks: "+ list.size());

    }

    /**
     * To construct basic blocks from Frames and Instructions received from Analyser
     *
     * @param frames
     * @param insns
     * @return
     */
    private List<BasicBlock> constructBasicBlock(final Frame<BasicValue>[] frames, final AbstractInsnNode[] insns) {
        // list of basic blocks
        List<BasicBlock> list = new ArrayList<BasicBlock>();
        int basicBlockIndex = 1;
        List<AbstractInsnNode> members = new ArrayList<AbstractInsnNode>();
        // map to store the couple ( index of node vs id of basic block)
        HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
        for (int i = 0; i < frames.length; ++i) {
            if (frames[i] != null) {
                Node<BasicValue> node = (Node<BasicValue>) frames[i];
                int indexNode = getIndex(node.getId(), frames);
                members.add(insns[indexNode]);
                map.put(i, basicBlockIndex);
                if (isJumpBlock(node)) {

                    List<Integer> successors = geInsntSuccessors(node, frames);
                    BasicBlock current = new BasicBlock(basicBlockIndex, members);
                    current.setIndexInsnSuccessors(successors);
                    list.add(current);
                    members = new ArrayList<AbstractInsnNode>();
                    basicBlockIndex++;
                }

            }
        }
        // update basic block successors
        for (BasicBlock bb : list) {
            if (bb.getIndexInsnSuccessors().size() != 0) {
                for (int indexInsnSuccessor : bb.getIndexInsnSuccessors()) {
                    bb.getIndexBasicBlockSuccessors().add(map.get(indexInsnSuccessor));
                }
            }

        }

        return list;
    }

    /**
     * To get the instructions successor of given Node
     *
     * @param node
     * @param frames
     * @return
     */
    private List<Integer> geInsntSuccessors(Node<BasicValue> node, Frame<BasicValue>[] frames) {
        List<Integer> insntSuccessors = new ArrayList<Integer>();
        if (node.successors.size() > 0) {
            for (Node nd : node.successors) {
                int succ = getIndex(nd.getId(), frames);
                insntSuccessors.add(succ);
            }
        }
        return insntSuccessors;
    }

    /**
     * Check if the program will enter another basic block
     *
     * @param node
     * @return
     */
    private boolean isJumpBlock(Node<BasicValue> node) {
        if (node.successors.size() > 1 || node.successors.size() == 0) {
            return true;
        }
        if (node.successors.size() == 1) {
            Node successor = node.successors.iterator().next();
            return successor.getId() != node.getId() + 1;
        }
        return false;
    }


    /**
     * This method is used to print the id of all nodes and successors of each node while debugging
     */
    public void visitEndDebug() {
        MethodNode mn = (MethodNode) mv;
        Analyzer<BasicValue> a = new MyAnalyser(new BasicInterpreter());
        try {
            System.out.println("For method: " + mn.name);
            a.analyze(owner, mn);
            Frame<BasicValue>[] frames = a.getFrames();
            AbstractInsnNode[] insns = mn.instructions.toArray();

            for (int i = 0; i < frames.length; ++i) {
                if (frames[i] != null) {
                    Node<BasicValue> node = (Node<BasicValue>) frames[i];
                    String s = "";
                    for (Node f : node.successors) {
                        s += getIndex(f.getId(), frames) + ",";
                    }
                    System.out.println(i + ": " + convertOpcodeToString(insns[i].getOpcode()) + " succ: " + s);
                }
            }

        } catch (AnalyzerException e) {
            e.printStackTrace();
        }

    }

    /**
     * Given id of Node, find the corresponding index of the node in array of frames which is returned
     * by analyser
     *
     * @param id
     * @param frames
     * @return
     */
    private int getIndex(final long id, final Frame<BasicValue>[] frames) {
        for (int index = 0; index < frames.length; index++) {
            if (((Node) frames[index]).getId() == id) {
                return index;
            }
        }
        return -1;

    }

    /**
     * convert the opcode to the representation string
     *
     * @param opcode
     * @return
     */
    private String convertOpcodeToString(final int opcode) {
        return opcode == -1 ? "-1" : Printer.OPCODES[opcode].toLowerCase();
    }
}

