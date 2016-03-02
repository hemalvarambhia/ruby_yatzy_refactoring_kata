require_relative 'test_helper'

class TestOnePair < Test::Unit::TestCase
  def test_that_a_throw_with_no_pairs_yields_0_score
    assert_equal 0, Yatzy.score_pair(1, 2, 3, 4, 5)
  end
end