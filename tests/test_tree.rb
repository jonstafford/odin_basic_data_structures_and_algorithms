require "./lib/tree.rb"
require "test/unit"

class TestNAME < Test::Unit::TestCase

  def array_from_nodes node
    return [] if node.nil?
    
    array_from_nodes(node.left) + [node.value] + array_from_nodes(node.right)
  end

  def test_build_tree 
    result = build_tree [1, 4, 6]
    
    assert_equal(4, result.value)
    
    assert_equal(1, result.left.value)
    assert_equal(6, result.right.value)
  end

  def test_build_tree_longer_array
    arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
    arr.sort!
    
    result = build_tree arr
    
    assert_equal(arr, array_from_nodes(result))
  end
  
end