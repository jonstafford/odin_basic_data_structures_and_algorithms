require "./lib/tree.rb"
require "test/unit"

class TestNAME < Test::Unit::TestCase

  def test_build_tree 
    result = build_tree [1, 4, 6]
    
    assert_equal(4, result.value)
    
    assert_equal(1, result.left.value)
    assert_equal(6, result.right.value)
  end

end