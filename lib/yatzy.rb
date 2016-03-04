class Yatzy
  def initialize(*dice)
    @dice = dice
  end

  def chance
    add_up_dice
  end
  
  def yatzy
    return 0 if @dice.uniq.count > 1

    50
  end

  def ones
    add_up_dice { |face| face == 1 }
  end

  def twos
    add_up_dice { |face| face == 2 }
  end

  def threes
    add_up_dice { |face| face == 3 }
  end
  
  def fours
    add_up_dice { |face| face == 4 }
  end

  def fives
    add_up_dice { |face| face == 5 }
  end

  def sixes
    add_up_dice { |face| face == 6 }
  end

  def score_pair
    pairs = faces_with { |count| count >= 2 }
    return 0 if pairs.none?
    2 * pairs.max
  end

  def two_pair
    pairs = faces_with { |count| count >= 2 }
    return 0 if pairs.size < 2
    2 * pairs.reduce(0, :+)
  end

  def four_of_a_kind
    quads = faces_with { |count| count >= 4 }
    return 0 if quads.none?
    4 * quads.first
  end

  def three_of_a_kind
    triplet = faces_with { |count| count >= 3 }
    return 0 if triplet.none?
    3 * triplet.first
  end

  def small_straight
    return 0 unless @dice.sort == [ 1, 2, 3, 4, 5 ]
    
    add_up_dice
  end

  def large_straight
    return 0 unless @dice.sort == [ 2, 3, 4, 5, 6 ]

    add_up_dice
  end

  def full_house
    triples = faces_with { |count| count == 3 }
    pair = faces_with { |count| count == 2 }
    return 0 if triples.none? or pair.none?

    add_up_dice
  end

  private

  def faces_with(&block)
    count_faces.select { |face, count| block.call(count) }.keys
  end

  def count_faces
    Hash[
      @dice.uniq.collect { |face| [face, @dice.count(face)] }
    ]
  end
  
  def add_up_dice 
    to_add_up = 
      if block_given?
        @dice.select { |face| yield face }
      else
        @dice
      end
    
    to_add_up.reduce(0, :+)
  end
end
