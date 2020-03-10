package design.pattern.visitor;

public class TreeNode implements Element
{

int value;
TreeNode left, right;

public TreeNode(int v)
{
   value = v;
   left = null;
   right = null;
}

public String toString()
{
   return String.valueOf(value);
}

public void accept(Visitor v)
{
   if (left != null)
      left.accept(v);
   v.visit(this);
   if (right != null)
      right.accept(v);
}

}

