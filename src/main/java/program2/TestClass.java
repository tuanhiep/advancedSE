/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program2;

public class TestClass {
    public int funTest(int x, int y) {
        x = x + 1;
        if (x < y && y > 3) {
            y--;
            x = x + y;
        } else {
            x = x -y ;
        }
        return y;
    }

//    public static void main(String[] args) {
//        TestClass object = new TestClass();
//        object.funTest(1,2);
//    }
}
