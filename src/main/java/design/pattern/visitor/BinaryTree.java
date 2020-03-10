package design.pattern.visitor;

public class BinaryTree implements Element
{

private TreeNode root;
private int nodeCount;

public BinaryTree()
{
   root = null;
   nodeCount = 0;
}

public BinaryTree(int numNodes)
{
   root = null;
   nodeCount = 0;
   for (int i=0; i < numNodes; i++)
      insert((int)(Math.random()*1000));
}

public boolean insert(int val)
{
   if (root == null) {
      root = new TreeNode(val);
      return true;
   }
   return insert(root,val);
}

private boolean insert(TreeNode node, int val)
{
   if (node.value > val) {
      if (node.left == null) {
         node.left = new TreeNode(val);
         return true;
      } else {
         return insert(node.left, val);
      }
   } else {
      if (node.right == null) {
         node.right = new TreeNode(val);
         return true;
      } else {
         return insert(node.right, val);
      }
   }
}

public void accept(Visitor v)
{
   v.visit(this);
   root.accept(v);
}

/**
public void print() {
   System.out.println("Tree:");
   print(root);
}

private void print(design.pattern.visitor.TreeNode node)
{
   if (node == null)
      return;
   print(node.left);
   System.out.println("Node: " + node.value);
   print(node.right);
}
**/

public static void main(String args[])
{
   int n = Integer.parseInt(args[0]);
   System.out.println("Tree should have "+n+" nodes...");
   BinaryTree tree = new BinaryTree(n);
   System.out.println("Tree created!");
   //tree.print();
   tree.accept(new TreePrinter());
}

}

