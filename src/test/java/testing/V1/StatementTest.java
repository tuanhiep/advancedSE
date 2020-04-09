/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V1;

import org.junit.Assert;
import org.junit.Test;
import testing.V1.Monitorable_stack;

public class StatementTest {

    Monitorable_stack monitorable_stack = new Monitorable_stack();

    @Test
    public void statementTest() {
        Integer[] array = new Integer[]{1, 2};
        monitorable_stack.push_many(array);
        monitorable_stack.push(new Integer(3));
        monitorable_stack.push(new Integer(4));
        Integer result = (Integer) monitorable_stack.pop();
        Integer[] expectedArray = new Integer[]{1, 2, 3};
        Assert.assertEquals(new Integer(4), result);
        Assert.assertArrayEquals(expectedArray, monitorable_stack.getThe_data().toArray());
        Assert.assertEquals(4, monitorable_stack.maximum_size_so_far());

    }

}