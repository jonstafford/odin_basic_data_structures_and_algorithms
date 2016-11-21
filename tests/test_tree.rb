require "./lib/tree.rb"
require "test/unit"

class TestNAME < Test::Unit::TestCase

  def array_from_nodes node
    return [] if node.nil?
    
    array_from_nodes(node.left) + [node.value] + array_from_nodes(node.right)
  end

  def test_build_tree
    arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
    
    result = build_tree arr
    
    assert_equal(arr.sort!, array_from_nodes(result))
  end
  
  def test_breadth_first_search
    arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
    
    tree = build_tree arr
    
    arr.each do |v|
      assert_equal(v, breadth_first_search(tree, v).value)
    end
  end
  
  def test_depth_first_search
    arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
    
    tree = build_tree arr
    
    arr.each do |v|
      assert_equal(v, depth_first_search(tree, v).value)
    end
  end
    
end