require_relative 'test_helper'

class TestTwos < Test::Unit::TestCase
  def test_that_a_throw_with_no_2s_yields_0_score
    assert_equal 0, twos(1, 1, 3, 1, 6)
  end

  def test_that_a_throw_with_2s_yields_the_sum_of_only_the_2s
    assert_equal 2, twos(2, 1, 3, 4, 6)
    assert_equal 4, twos(2, 2, 1, 3, 3)
    assert_equal 6, twos(2, 2, 3, 3, 2)
  end

  private

  def twos(*dice)
    Yatzy.new(*dice).twos
  end
end
