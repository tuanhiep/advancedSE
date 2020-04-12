package program3;

public class Jml {

    /*@ spec_public @*/ int x;
    /*@ spec_public @*/ int y;
//@ public invariant x+y >= 0;

    // Returns the maximum of the arguments.
//@ ensures \result == a ==> (a >b) && \result == b ==> (a <= b) ;
    public int max(int a, int b) {
        if (a > b)
            return a;
        else
            return b;
    }

    // Returns the argument a but limiting its value
// to the range (-absCutoff, +absCutoff); if a is
// outside this range the return value is the closest
// endpoint of the range.
//@ requires absCutoff > 0;
//@ ensures \result==a ==> (-absCutoff <=  a && a <= absCutoff) && \result==-absCutoff ==> (a < -absCutoff) && \result==absCutoff ==> (a > absCutoff) ;
    public int limit(int a, int absCutoff) {
        if (a >= 0) {
            if (a < absCutoff)
                return a;
            return absCutoff;
        } else {
            if (a > -absCutoff)
                return a;
            return -absCutoff;
        }
    }

    // No ensures, this method demonstrates how
// invariants are checked.
// (note the requires below are only so that
//  ESC checking doesn't encounter int overflows)
//@ requires newx < 10000 && newx > -10000;
//@ requires newy < 10000 && newy > -10000;
    public void update(int newx, int newy) {
        // cannot add code here
        x = newx;  // cannot change this line
        y = newy;  // cannot change this line
        // can only add code here

        if (x + y < 0) {
            if (newx < 0) x = -newx;
            if (newy < 0) y = -newy;
        }


    }

    // Returns true if key is in array, false otherwise.
//@ requires vals != null && vals.length > 0;
//@ ensures \result == true ==> (\exists int j; 0<=j && j< vals.length; vals[j] == key) && \result == false ==> (\forall int j; 0<=j && j< vals.length; vals[j] != key);
    public boolean find(int vals[], int key) {
        int i;
        i = 0;
        while (i < vals.length) {
            //@ assume i >=0;
            if (vals[i] == key)
                return true;
            i++;
        }
        return false;
    }

    // Main
    public static void main(String args[]) {
        Jml o = new Jml();
        int v;
        v = o.max(76, 32);
        // System.out.println("max() = "+v);
        v = o.limit(32, 10);
        // System.out.println("limit() = "+v);
        o.update(45, 69);
        int a[] = {1, 2, 3, 4, 5};
        boolean f = o.find(a, 3);
        // System.out.println("find = " + f);
    }

}
