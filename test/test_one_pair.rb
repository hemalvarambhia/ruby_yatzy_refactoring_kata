require_relative 'test_helper'

class TestOnePair < Test::Unit::TestCase
  def test_that_a_throw_with_no_pairs_yields_0_score
    assert_equal 0, score_pair(1, 2, 3, 4, 5)
  end

  def test_that_the_score_is_the_sum_of_the_highest_pair
    assert_equal 6, score_pair(3, 1, 3, 1, 6)
    assert_equal 10, score_pair(5, 5, 5, 5, 5)
    assert_equal 12, score_pair(5, 6, 6, 6, 5)
  end

  private

  def score_pair(*dice)
    Yatzy.new(*dice).score_pair
  end
end
