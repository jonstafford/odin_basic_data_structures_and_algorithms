require "./lib/knight_moves.rb"
require "test/unit"

class TestKnightMoves < Test::Unit::TestCase

  def test_knight_moves
    assert_equal([[0,0],[1,2]], knight_moves([0,0],[1,2]))
    assert_equal([[0,0],[1,2],[3,3]], knight_moves([0,0],[3,3]))
    assert_equal([[3,3],[1,2],[0,0]], knight_moves([3,3],[0,0]))
  end
  
end