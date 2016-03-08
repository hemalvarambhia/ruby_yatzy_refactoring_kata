require_relative 'test_helper'

class TestFives < Test::Unit::TestCase
  def test_that_a_throw_with_no_fives_yields_0_score
    assert_equal 0, fives(1, 2, 3, 3, 4)
  end

  def test_that_a_throw_with_5s_yields_sum_of_only_the_5s
    assert_equal 5, fives(5, 2, 3, 1, 4)
    assert_equal 10, fives(5, 5, 1, 2, 6)
    assert_equal 15, fives(5, 5, 5, 2, 4)
    assert_equal 20, fives(5, 5, 5, 5, 4)
    assert_equal 25, fives(5, 5, 5, 5, 5)
  end

  def fives(*dice)
    Yatzy.new(*dice).fives
  end
end
