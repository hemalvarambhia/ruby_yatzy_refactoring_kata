require_relative 'test_helper'

class TestFours < Test::Unit::TestCase
  def test_that_a_throw_with_4s_yields_a_sum_of_only_the_4s
    assert_equal 4, fours(4, 1, 5, 5, 5)
    assert_equal 8, fours(4, 4, 5, 5, 5)
    assert_equal 12, fours(4, 4, 5, 5, 4)
  end

  private

  def fours(*dice)
    Yatzy.new(*dice).fours
  end
end
