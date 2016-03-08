require 'test_helper'

class TestSixes < Test::Unit::TestCase
  def test_that_a_throw_with_no_6s_yields_0_score
    assert_equal 0, sixes(1, 2, 3, 4, 5)
  end

  def test_that_a_throw_with_6s_yields_sum_of_only_the_6s
    assert_equal 6, sixes(6, 1, 2, 3, 4)
    assert_equal 12, sixes(6, 6, 1, 2, 4)
    assert_equal 18, sixes(6, 6, 6, 1, 3)
    assert_equal 24, sixes(6, 6, 6, 6, 3)
    assert_equal 30, sixes(6, 6, 6, 6, 6)
  end

  private

  def sixes(*dice)
    Yatzy.new(*dice).sixes
  end
end
