require_relative 'test_helper'
require 'yatzy'

class TestTwos < Test::Unit::TestCase
  def test_that_a_throw_with_no_2s_yields_0_score
    assert_equal 0, Yatzy.twos(1, 1, 3, 1, 6)
  end

  def test_that_a_throw_with_2s_yields_a_score_that_their_sum
    assert_equal 2, Yatzy.twos(2, 1, 3, 4, 6)
    assert_equal 4, Yatzy.twos(2, 2, 1, 3, 3)
    assert_equal 6, Yatzy.twos(2, 2, 2, 3, 3)
     assert_equal 8, Yatzy.twos(2, 2, 2, 2, 3)
    assert_equal 10, Yatzy.twos(2, 2, 2, 2, 2)
  end
end
