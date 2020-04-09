/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V2;


class Stack {
    private int stack_pointer = -1;
    private Object[] stack = new Object[1000];

    public void push(Object article) {
        assert stack_pointer < stack.length;
        stack[++stack_pointer] = article;
    }

    public Object pop() {
        assert stack_pointer >= 0;
        return stack[stack_pointer--];
    }

    public void push_many(Object[] articles) {
        assert (stack_pointer + articles.length) < stack.length;
        System.arraycopy(articles, 0, stack, stack_pointer + 1,
                articles.length);
        stack_pointer += articles.length;
    }
}
