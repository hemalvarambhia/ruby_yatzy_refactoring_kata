require_relative 'test_helper'

class TestSmallStraight < Test::Unit::TestCase
  def test_that_a_throw_that_is_not_1234_and_5_yields_0_score
    assert_equal 0, Yatzy.new(2, 3, 4, 5, 6).small_straight
  end

  def test_that_a_throw_with_1234_and_5_in_any_order_yields_15
    assert_equal 15, Yatzy.new(1, 2, 3, 4, 5).small_straight
    assert_equal 15, Yatzy.new(5, 4, 3, 2, 1).small_straight
  end
end
