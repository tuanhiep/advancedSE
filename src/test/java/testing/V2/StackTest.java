/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V2;

import org.junit.Test;

import static org.junit.Assert.*;

public class StackTest {

    Stack stack = new Stack();

    @Test
    public void boundaryTest() {
        Integer[] array1 = new Integer[500];
        stack.push_many(array1);
        Integer[] array2 = new Integer[500];
        stack.push_many(array2);
        Integer[] array3 = new Integer[500];
        stack.push_many(array3);
    }
}