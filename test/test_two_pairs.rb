require_relative 'test_helper'

class TestTwoPairs < Test::Unit::TestCase
  def test_that_a_throw_with_no_pairs_yields_0_score
    assert_equal 0, Yatzy.two_pair(1, 2, 3, 4, 5)
  end

  def test_that_a_throw_with_just_one_pair_yields_0_score
    assert_equal 0, Yatzy.two_pair(1, 2, 2, 3, 4)
  end

  def that_a_throw_with_two_pairs_sums_the_highest_two_pairs
    assert_equal 16, Yatzy.two_pair(1, 5, 5, 3, 3)
    assert_equal 16, Yatzy.two_pairs(3, 3, 5, 5, 5)
  end
end