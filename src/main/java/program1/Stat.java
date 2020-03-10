/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package program1;

/**
 * Class represent the number of accesses to field in 2 cases get and put
 */
public class Stat {
    // counter for getField accesses
    public int getCount;
    // counter for putField accesses
    public int putCount;

    public Stat() {
        this.getCount = 0;
        this.putCount = 0;
    }

    public int getGetCount() {
        return getCount;
    }

    public int getPutCount() {
        return putCount;
    }

    /**
     * Increment number of getField access by 1 each time
     */
    public void incrementGetCount() {
        this.getCount++;
    }

    /**
     * Increment number of putField access by 1 each time
     */
    public void incrementPutCount() {
        this.putCount++;
    }
}
