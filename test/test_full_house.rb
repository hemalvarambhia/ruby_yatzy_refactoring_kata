require_relative 'test_helper'

class TestFullHouse < Test::Unit::TestCase
  def test_that_throw_no_3_of_a_kind_and_2_of_a_kind_yields_0_score
    assert_equal 0, Yatzy.fullHouse(1, 2, 3, 4, 5)
  end

  def test_that_throw_with_only_3_of_a_kind_yields_0_score
    assert_equal 0, Yatzy.fullHouse(2, 2, 2, 1, 3)
  end

  def test_that_throw_with_only_2_of_a_kind_yields_0_score
    assert_equal 0, Yatzy.fullHouse(2, 2, 1, 3, 4)
  end

  def test_that_2_of_a_kind_and_3_of_a_kind_yield_sum_of_all_the_dice
    assert_equal 12, Yatzy.fullHouse(2, 2, 2, 3, 3)
    assert_equal 27, Yatzy.fullHouse(5, 5, 5, 6, 6)
  end
end
