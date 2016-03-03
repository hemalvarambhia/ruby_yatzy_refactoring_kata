require_relative 'test_helper'

class YatzyTest < Test::Unit::TestCase
  def test_yatzy_scores_50
    assert_equal 50, Yatzy.yatzy([6,6,6,6,6])
  end

  def test_no_yatzy_scores_0
    assert_equal 0, Yatzy.yatzy([6,6,6,6,3])
  end
end
