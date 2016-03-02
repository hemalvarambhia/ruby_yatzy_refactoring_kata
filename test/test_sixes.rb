require 'test_helper'

class TestSixes < Test::Unit::TestCase
  def test_that_a_throw_with_no_6s_yields_0_score
    assert_equal 0, Yatzy.new(1, 2, 3, 4, 5).sixes
  end

  def test_that_a_throw_with_6s_yields_sum_of_only_the_6s
    assert_equal 6, Yatzy.new(6, 1, 2, 3, 4).sixes
    assert_equal 12, Yatzy.new(6, 6, 1, 2, 4).sixes
    assert_equal 18, Yatzy.new(6, 6, 6, 1, 3).sixes
    assert_equal 24, Yatzy.new(6, 6, 6, 6, 3).sixes
    assert_equal 30, Yatzy.new(6, 6, 6, 6, 6).sixes
  end
end