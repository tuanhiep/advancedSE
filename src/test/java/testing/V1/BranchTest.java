/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V1;

import org.junit.Assert;
import org.junit.Test;
import testing.V1.Monitorable_stack;

public class BranchTest {
    Monitorable_stack monitorable_stack = new Monitorable_stack();

    @Test
    public void pushTestCase1() {
        Integer[] array = new Integer[]{1};
        monitorable_stack.push(new Integer(1));
        Assert.assertArrayEquals(array, monitorable_stack.getThe_data().toArray());
    }

    @Test
    public void pushTestCase2() {
        Integer[] array = new Integer[]{1, 3};
        monitorable_stack.push(new Integer(1));
        monitorable_stack.push(new Integer(2));
        monitorable_stack.pop();
        monitorable_stack.push(new Integer(3));
        Assert.assertArrayEquals(array, monitorable_stack.getThe_data().toArray());
    }

    @Test
    public void pop() {
        monitorable_stack.push(new Integer(1));
        monitorable_stack.push(new Integer(2));
        Integer result= (Integer) monitorable_stack.pop();
        Integer[] expectedArray = new Integer[]{1};
        Assert.assertEquals(new Integer(2), result);
        Assert.assertArrayEquals(expectedArray, monitorable_stack.getThe_data().toArray());
    }

    @Test
    public void maximum_size_so_far() {
        monitorable_stack.push(new Integer(1));
        monitorable_stack.push(new Integer(2));
        monitorable_stack.pop();
        Assert.assertEquals(2, monitorable_stack.maximum_size_so_far());
    }
}