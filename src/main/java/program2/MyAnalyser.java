/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program2;

import org.objectweb.asm.tree.analysis.Analyzer;
import org.objectweb.asm.tree.analysis.BasicValue;
import org.objectweb.asm.tree.analysis.Frame;
import org.objectweb.asm.tree.analysis.Interpreter;

public class MyAnalyser extends Analyzer {
    public MyAnalyser(Interpreter interpreter) {
        super(interpreter);
    }

    @Override
    protected Frame<BasicValue> newFrame(int nLocals, int nStack) {
        return new Node<BasicValue>(nLocals, nStack);
    }
    @Override
    protected Frame<BasicValue> newFrame(Frame src) {
        return new Node<BasicValue>(src);
    }
    @Override
    protected void newControlFlowEdge(int src, int dst) {
        Node<BasicValue> s = (Node<BasicValue>) getFrames()[src];
        s.successors.add((Node<BasicValue>) getFrames()[dst]);
    }

}
