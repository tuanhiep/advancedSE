/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V3;

import org.junit.Assert;
import org.junit.Test;


public class Monitorable_stackTest {
    Monitorable_stack monitorable_stack = new Monitorable_stack();

    @Test
    public void branchTest() {

        // Test 100 % branch coverage for push(..) and pop(..) function

        monitorable_stack.push(new Integer(1));
        monitorable_stack.push(new Integer(2));
        Integer result = (Integer) monitorable_stack.pop();
        Assert.assertEquals(new Integer(2), result);
        monitorable_stack.push(new Integer(3));

        // Test 100% branch coverage for push_many(..) function

        // Test when if branch of push_many(..) function is true
        Integer[] array1 = new Integer[498];
        monitorable_stack.push_many(array1);
        // At this time, high_water_mark=500, current_size=2
        Assert.assertEquals(500, monitorable_stack.maximum_size());
        //Test when if branch of push_many(..) function is false
        Integer[] array2 = new Integer[10];
        monitorable_stack.push_many(array2);
        // Test when out of limit of array stack in Simple_stack class
        Integer[] array3 = new Integer[1000];
        monitorable_stack.push_many(array3);

    }
}
