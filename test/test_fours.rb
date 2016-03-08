require_relative 'test_helper'

class TestFours < Test::Unit::TestCase
  def test_that_a_throw_with_no_4s_yields_0_score
    assert_equal 0, fours(1, 2, 3, 5, 6)
  end
    
  def test_that_a_throw_with_4s_yields_a_sum_of_only_the_4s
    assert_equal 12, fours(4, 4, 4, 5, 5)
    assert_equal 8, fours(4, 4, 5, 5, 5)
    assert_equal 4, fours(4, 5, 5, 5, 5)
    assert_equal 16, fours(4, 4, 4, 4, 1)
  end

  def fours(*dice)
    Yatzy.new(*dice).fours
  end
end
