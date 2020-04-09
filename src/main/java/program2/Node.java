/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program2;

import org.objectweb.asm.tree.analysis.Frame;
import org.objectweb.asm.tree.analysis.Value;

import java.util.HashSet;
import java.util.Set;

public class Node<V extends Value> extends Frame<V> {
    private static int count = 0;
    private int id;
    Set<Node<V>> successors = new HashSet<Node<V>>();

    public Node(int nLocals, int nStack) {
        super(nLocals, nStack);
        id = count++;
    }

    public Node(Frame<? extends V> src) {
        super(src);
        id = count++;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
