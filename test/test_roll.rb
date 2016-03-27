require_relative 'test_helper'

class TestRoll < Test::Unit::TestCase
  def test_that_we_only_sum_the_faces_the_dice_landed_on
    roll = Roll.new([1, 2, 6, 6, 2])
    assert_equal roll.add_up { |landed| landed == 2 }, 4
  end
end
