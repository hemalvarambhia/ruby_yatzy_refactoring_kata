require 'roll'
class Yatzy
  def initialize(*dice)
    @dice = Roll.new dice
  end

  def chance
    @dice.add_up
  end
  
  def yatzy
    return 0 if @dice.uniq.count > 1

    50
  end

  def ones
    @dice.add_up { |landed_on| landed_on == 1 }
  end

  def twos
    @dice.add_up { |landed_on| landed_on == 2 }
  end

  def threes
    @dice.add_up { |landed_on| landed_on == 3 }
  end
  
  def fours
    @dice.add_up { |landed_on| landed_on == 4 }
  end

  def fives
    @dice.add_up { |landed_on| landed_on == 5 }
  end

  def sixes
    @dice.add_up { |landed_on| landed_on == 6 }
  end

  def score_pair
    pairs = @dice.faces_with { |count| count >= 2 }
    return 0 if pairs.none?
    2 * pairs.max
  end

  def two_pair
    pairs = @dice.faces_with { |count| count >= 2 }
    return 0 if pairs.size < 2
    2 * pairs.reduce(0, :+)
  end

  def four_of_a_kind
    quads = @dice.faces_with { |count| count >= 4 }
    return 0 if quads.none?
    4 * quads.first
  end

  def three_of_a_kind
    triplet = @dice.faces_with { |count| count >= 3 }
    return 0 if triplet.none?
    3 * triplet.first
  end

  def small_straight
    return 0 unless @dice.sort == [ 1, 2, 3, 4, 5 ]
    
    @dice.add_up
  end

  def large_straight
    return 0 unless @dice.sort == [ 2, 3, 4, 5, 6 ]

    @dice.add_up
  end

  def full_house
    triples = @dice.faces_with {|count| count == 3 }
    pair = @dice.faces_with { |count| count == 2 }
    return 0 if triples.none? or pair.none?

    @dice.add_up
  end
end
