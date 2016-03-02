require_relative 'test_helper'

class TestFives < MiniTest::Test
  def test_that_a_throw_with_no_fives_yields_0_score
    assert_equal 0, Yatzy.new(1, 2, 3, 3, 4).fives
  end

  def test_that_a_throw_with_5s_yields_sum_of_only_the_5s
    assert_equal 5, Yatzy.new(5, 2, 3, 1, 4).fives
    assert_equal 10, Yatzy.new(5, 5, 1, 2, 6).fives
    assert_equal 15, Yatzy.new(5, 5, 5, 2, 4).fives
    assert_equal 20, Yatzy.new(5, 5, 5, 5, 4).fives
    assert_equal 25, Yatzy.new(5, 5, 5, 5, 5).fives
  end
end
