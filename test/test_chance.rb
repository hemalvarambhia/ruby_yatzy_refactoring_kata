require_relative 'test_helper'

class TestChance < Test::Unit::TestCase
  def test_chance_scores_sum_of_all_dice
    assert_equal 15, chance(2, 3, 4, 5, 1)
    assert_equal 16, chance(3, 3, 4, 5, 1)
  end

  def chance(*dice)
    Yatzy.new(*dice).chance
  end
end
