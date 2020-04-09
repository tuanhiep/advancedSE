/*
 * Copyright (c) 2020.  @author: Tuan Hiep TRAN
 */

package testing.V1;

import java.util.ArrayList;

public class Stack {
    private int stack_pointer = 0;
    private ArrayList the_data = new ArrayList();

    public ArrayList getThe_data() {
        return the_data;
    }

    public void push(Object article) {
        the_data.add(stack_pointer++, article);
    }

    public Object pop() {
        return the_data.remove(--stack_pointer);
    }

    public void push_many(Object[] articles) {
        for (int i = 0; i < articles.length; ++i)
            push(articles[i]);
    }
}
