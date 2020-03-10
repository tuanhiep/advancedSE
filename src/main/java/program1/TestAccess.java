/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program1;

/**
 * Class to test the number of accesses to the fields
 */
public class TestAccess {
    public int field1;
    public int field2;
    public int field3;
    public int field4;
    public static String fStat;

    public static void main(String[] args) {
        TestAccess ta = new TestAccess();
        ta.field1 = 11;
        ta.field2 = 21;
        ta.field4 = 41;
        int f1 = ta.field1;
        int f2 = ta.field2;
        ta.field2 = 22;
        int f3 = ta.field3;
        int f4 = ta.field4;
        TestAccess.fStat = "Hello";
        String fStatic1 = TestAccess.fStat;
        String fStatic2 = TestAccess.fStat;
        TestAccess.fStat = "Static";

    }
}
