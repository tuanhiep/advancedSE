/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V1;

public class Monitorable_stack extends Stack {
    private int high_water_mark = 0;
    private int current_size;

    public void push(Object article) {
        if (++current_size > high_water_mark)
            high_water_mark = current_size;
        super.push(article);
    }

    public Object pop() {
        --current_size;
        return super.pop();
    }

    public int maximum_size_so_far() {
        return high_water_mark;
    }
}
