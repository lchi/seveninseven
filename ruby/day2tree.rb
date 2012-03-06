# -*- coding: utf-8 -*-
class Tree
  attr_accessor :children, :node_name

  def initialize(tree={})
    @node_name = tree.keys[0]
    @children = []
    if not tree.nil?
      tree[@node_name].keys.each do |key| 
        @children.push(Tree.new({ key => (tree[@node_name])[key]}))
      end
    end

  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end



