require_relative 'test_helper'

class TestRoll < Test::Unit::TestCase
  def test_that_we_only_sum_the_faces_the_dice_landed_on
    roll = Roll.new([1, 2, 6, 6, 2])
    assert_equal 4, roll.add_up { |landed| landed == 2 }
    assert_equal 0, roll.add_up { |landed| landed == 3 }
  end

  def test_that_find_dice_that_meet_count_criteria
    roll = Roll.new([1, 2, 3, 3, 4, 1, 1])

    assert_equal([3], roll.faces_with { |count| count == 2 })
  end
end
