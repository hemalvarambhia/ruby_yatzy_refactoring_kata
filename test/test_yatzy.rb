require_relative 'test_helper'

class YatzyTest < MiniTest::Test
  def test_yatzy_scores_50
    assert_equal 50, Yatzy.yatzy([6,6,6,6,6])
  end

  def test_no_yatzy_scores_0
    assert_equal 0, Yatzy.yatzy([6,6,6,6,3])
  end

  def test_largeStraight
    assert 20 == Yatzy.largeStraight(6,2,3,4,5)
    assert 20 == Yatzy.largeStraight(2,3,4,5,6)
    assert 0 == Yatzy.largeStraight(1,2,2,4,5)
  end

  def test_fullHouse()
    assert 18 == Yatzy.fullHouse(6,2,2,2,6)
    assert 0 == Yatzy.fullHouse(2,3,4,5,6)
  end
end
