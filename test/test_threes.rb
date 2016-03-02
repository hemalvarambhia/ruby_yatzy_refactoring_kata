require_relative 'test_helper'


class TestThrees < Test::Unit::TestCase
  def test_that_a_throw_with_no_3s_yields_0_score
    assert_equal 0, Yatzy.threes(1, 2, 4, 5, 6)
  end

  def test_that_a_throw_with_3s_yields_sum_of_only_the_3s
    assert_equal 3, Yatzy.threes(3, 2, 1, 2, 4)
    assert_equal 6, Yatzy.threes(3, 3, 1, 2, 4)
    assert_equal 9, Yatzy.threes(3, 3, 3, 2, 1)
    assert_equal 12, Yatzy.threes(3, 3, 3, 3, 2)
    assert_equal 15, Yatzy.threes(3, 3, 3, 3, 3)
  end
end
