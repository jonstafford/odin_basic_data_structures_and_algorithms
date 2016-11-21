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
  
end