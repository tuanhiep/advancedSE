/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V1;

import org.junit.Assert;
import org.junit.Test;
import testing.V1.Stack;

public class StackTest {

    Stack stack = new Stack();

    @Test
    public void push_many() {
        Integer[] array=new Integer[]{1, 2, 3};
        stack.push_many(array);
        Assert.assertArrayEquals(array,stack.getThe_data().toArray());

    }
}
