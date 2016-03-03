require_relative 'test_helper'
require_relative '../lib/yatzy'

class TestOnes < Test::Unit::TestCase
  def test_that_a_throw_with_no_ones_yields_0_score
    assert_equal 0, Yatzy.new(6,2,2,4,5).ones
  end

  def test_that_a_throw_with_1s_yields_the_sum_of_only_the_1s
    assert_equal 1, Yatzy.new(1, 2, 3, 4, 5).ones
    assert_equal 2, Yatzy.new(1, 1, 3, 4, 5).ones
    assert_equal 3, Yatzy.new(1, 1, 1, 4, 3).ones
    assert_equal 4, Yatzy.new(1, 1, 1, 1, 6).ones
    assert_equal 5, Yatzy.new(1, 1, 1, 1, 1).ones
  end
end
