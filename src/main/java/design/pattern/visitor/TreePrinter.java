package design.pattern.visitor;

public class TreePrinter implements Visitor
{

public void visit(BinaryTree tree)
{
   System.out.println("Visiting tree:"+tree);
}

public void visit(TreeNode node)
{
   System.out.println(" Node:"+node);
}

}


