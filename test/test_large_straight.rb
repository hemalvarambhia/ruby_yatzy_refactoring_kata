require_relative 'test_helper'

class TestLargeStraight < Test::Unit::TestCase
  def test_that_anything_other_than_2345_and_6_yields_0_score
    assert_equal 0, Yatzy.largeStraight(1, 2, 3, 4, 4)
  end

  def test_that_a_throw_of_2345_and_6__in_any_order_yields_20_score
    assert_equal 20, Yatzy.largeStraight(2, 3, 4, 5, 6)
    assert_equal 20, Yatzy.largeStraight(3, 2, 5, 6, 4)
  end
end