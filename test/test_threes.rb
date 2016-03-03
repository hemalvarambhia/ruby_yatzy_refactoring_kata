require_relative 'test_helper'

class TestThrees < Test::Unit::TestCase
  def test_that_a_throw_with_no_3s_yields_0_score
    assert_equal 0, Yatzy.new(1, 2, 4, 5, 6).threes
  end

  def test_that_a_throw_with_3s_yields_sum_of_only_the_3s
    assert_equal 3, Yatzy.new(3, 2, 1, 2, 4).threes
    assert_equal 6, Yatzy.new(3, 3, 1, 2, 4).threes
    assert_equal 9, Yatzy.new(3, 3, 3, 2, 1).threes
    assert_equal 12, Yatzy.new(3, 3, 3, 3, 2).threes
    assert_equal 15, Yatzy.new(3, 3, 3, 3, 3).threes
  end
end
