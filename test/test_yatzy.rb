require_relative 'test_helper'

class YatzyTest < Test::Unit::TestCase
  def test_yatzy_scores_50
    assert_equal 50, yatzy(6, 6, 6, 6, 6)
    assert_equal 50, yatzy(2, 2, 2, 2, 2)
    assert_equal 50, yatzy(3, 3, 3, 3, 3)
  end

  def test_no_yatzy_scores_0
    assert_equal 0, yatzy(6, 6, 6, 6, 3)
  end

  private

  def yatzy(*dice)
    Yatzy.new(*dice).yatzy
  end
end
