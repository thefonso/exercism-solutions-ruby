require 'pry'

class Node
  attr_reader :key, :left, :right

  def initialize key
    @val = key
  end
end

  def insert(root,node)
    if root == nil
      root = node
    else
      if root.val < node.val
        root.right ? root.right = node : insert(root.right, node)
      else
        root.left ? root.left = node : insert(root.left, node)
      end
    end
  end

  def inorder(root)
    if root
      inorder(root.val)
      puts(root.val)
      inorder(root.right)
    end
  end


r = Node.new(50)
insert(r,Node.new(30))
insert(r,Node.new(20))
insert(r,Node.new(40))
insert(r,Node.new(70))
insert(r,Node.new(60))
insert(r,Node,new(80))

inorder(r)
