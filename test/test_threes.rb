require_relative 'test_helper'

class TestThrees < Test::Unit::TestCase
  def test_that_a_throw_with_3s_yields_sum_of_only_the_3s
    assert_equal 6, threes(3, 3, 5, 5, 5)
    assert_equal 9, threes(3, 3, 3, 2, 2)
    assert_equal 12, threes(3, 2, 3, 3, 3)
  end

  private

  def threes(*dice)
    Yatzy.new(*dice).threes
  end
end
