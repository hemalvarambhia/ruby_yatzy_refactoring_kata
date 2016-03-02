require_relative 'test_helper'

class TestFours < MiniTest::Test
  def test_that_a_throw_with_no_4s_yields_0_score
    assert_equal 0, Yatzy.new(1, 2, 3, 5, 6).fours
  end
    
  def test_that_a_throw_with_4s_yields_a_sum_of_only_the_4s
    assert_equal 12, Yatzy.new(4, 4, 4, 5, 5).fours
    assert_equal 8, Yatzy.new(4, 4, 5, 5, 5).fours
    assert_equal 4, Yatzy.new(4, 5, 5, 5, 5).fours
    assert_equal 16, Yatzy.new(4, 4, 4, 4, 1).fours
  end
end
