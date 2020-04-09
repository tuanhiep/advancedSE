/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V3;

public class Simple_stack implements Stack {

    private int stack_pointer = -1;
    private Object[] stack = new Object[1000];

    @Override
    public void push(Object o) {
        assert stack_pointer < stack.length;
        stack[++stack_pointer] = o;

    }

    @Override
    public Object pop() {
        assert stack_pointer >= 0;
        return stack[stack_pointer--];
    }

    @Override
    public void push_many(Object[] source) {
        assert (stack_pointer + source.length) < stack.length;
        System.arraycopy(source, 0, stack, stack_pointer + 1, source.length);
        stack_pointer += source.length;

    }
}
