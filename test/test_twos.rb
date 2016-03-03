require_relative 'test_helper'

class TestTwos < Test::Unit::TestCase
  def test_that_a_throw_with_no_2s_yields_0_score
    assert_equal 0, Yatzy.new(1, 1, 3, 1, 6).twos
  end

  def test_that_a_throw_with_2s_yields_the_sum_of_only_the_2s
    assert_equal 2, Yatzy.new(2, 1, 3, 4, 6).twos
    assert_equal 4, Yatzy.new(2, 2, 1, 3, 3).twos
    assert_equal 6, Yatzy.new(2, 2, 2, 3, 3).twos
    assert_equal 8, Yatzy.new(2, 2, 2, 2, 3).twos
    assert_equal 10, Yatzy.new(2, 2, 2, 2, 2).twos
  end
end
