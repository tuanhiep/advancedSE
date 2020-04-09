/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V3;

public class Monitorable_stack implements Stack {

    private int high_water_mark = 0;
    private int current_size;
    Simple_stack stack = new Simple_stack();

    @Override
    public void push(Object o) {
        if (++current_size > high_water_mark)
            high_water_mark = current_size;
        stack.push(o);
    }

    @Override
    public Object pop() {
        --current_size;
        return stack.pop();
    }

    @Override
    public void push_many(Object[] source) {
        if (current_size + source.length > high_water_mark)
            high_water_mark = current_size + source.length;

        stack.push_many(source);
    }

    public int maximum_size() {
        return high_water_mark;
    }
}
