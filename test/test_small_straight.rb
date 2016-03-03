require_relative 'test_helper'

class TestSmallStraight < Test::Unit::TestCase
  def test_that_a_throw_that_is_not_1234_and_5_yields_0_score
    assert_equal 0, Yatzy.smallStraight(2, 3, 4, 5, 6)
  end

  def test_that_a_throw_with_1234_and_5_in_any_order_yields_15
    assert_equal 15, Yatzy.smallStraight(1, 2, 3, 4, 5)
    assert_equal 15, Yatzy.smallStraight(5, 4, 3, 2, 1)
  end
end
