package design.pattern.visitor;

public interface Visitor
{
   public void visit(BinaryTree tree);
   public void visit(TreeNode node);
}
