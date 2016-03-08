require_relative 'test_helper'
require_relative '../lib/yatzy'

class TestOnes < Test::Unit::TestCase
  def test_that_a_throw_with_no_ones_yields_0_score
    assert_equal 0, ones(6, 2, 2, 4, 5)
  end

  def test_that_a_throw_with_1s_yields_the_sum_of_only_the_1s
    assert_equal 1, ones(1, 2, 3, 4, 5)
    assert_equal 2, ones(1, 1, 3, 4, 5)
    assert_equal 3, ones(1, 1, 1, 4, 3)
    assert_equal 4, ones(1, 1, 1, 1, 6)
    assert_equal 5, ones(1, 1, 1, 1, 1)
  end

  private

  def ones(*dice)
    Yatzy.new(*dice).ones
  end
end
