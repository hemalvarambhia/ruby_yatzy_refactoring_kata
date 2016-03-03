require_relative 'test_helper'

class TestChance < Test::Unit::TestCase
  def test_chance_scores_sum_of_all_dice
    assert_equal 15, Yatzy.new(2,3,4,5,1).chance  
    assert_equal 16, Yatzy.new(3,3,4,5,1).chance
  end
end
