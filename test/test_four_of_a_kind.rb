require_relative 'test_helper'

class TestFourOfAKind < Test::Unit::TestCase
  def test_that_a_throw_with_no_four_of_a_kind_yields_0_score
    assert_equal 0, four_of_a_kind(1, 2, 3, 4, 5)
  end

  def test_that_a_throw_with_a_pair_yields_0_score
    assert_equal 0, four_of_a_kind(1, 1, 3, 4, 5)
  end

  def test_that_a_throw_with_three_of_a_kind_yields_0_score
    assert_equal 0, four_of_a_kind(1, 1, 1, 2, 3)
  end

  def test_that_a_throw_with_a_four_of_a_kind_sums_those_four_faces
    assert_equal 20, four_of_a_kind(5, 5, 5, 5, 1)
    assert_equal 20, four_of_a_kind(1, 5, 5, 5, 5)
    assert_equal 20, four_of_a_kind(5, 1, 5, 5, 5)
    assert_equal 20, four_of_a_kind(5, 5, 1, 5, 5)
    assert_equal 20, four_of_a_kind(5, 5, 5, 1, 5)
    assert_equal 12, four_of_a_kind(1, 3, 3, 3, 3)
  end

  private

  def four_of_a_kind(*dice)
    Yatzy.new(*dice).four_of_a_kind
  end
end
