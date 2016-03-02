require_relative 'test_helper'

class TestThreeOfAKind < Test::Unit::TestCase
  def test_that_a_throw_with_no_3_of_a_kind_yields_0_score
    assert_equal 0, Yatzy.three_of_a_kind(1, 2, 3, 4, 5)
  end
  
  def test_that_a_throw_with_a_pair_yields_0_score
    assert_equal 0, Yatzy.three_of_a_kind(1, 2, 2, 4, 5)
  end

  def test_that_a_throw_with_3_of_a_kind_sums_only_those_3_faces
    assert_equal 15, Yatzy.three_of_a_kind(1, 5, 5, 5, 2)
    assert_equal 15, Yatzy.three_of_a_kind(5, 5, 5, 5, 2)
  end
end