require_relative 'test_helper'

class YatzyTest < Test::Unit::TestCase
  def test_yatzy_scores_50
    assert_equal 50, Yatzy.new(6, 6, 6, 6, 6).yatzy
    assert_equal 50, Yatzy.new(2, 2, 2, 2, 2).yatzy 
    assert_equal 50, Yatzy.new(3, 3, 3, 3, 3).yatzy
  end

  def test_no_yatzy_scores_0
    assert_equal 0, Yatzy.new(6, 6, 6, 6, 3).yatzy
  end
end
