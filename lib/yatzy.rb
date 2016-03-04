class Yatzy
  def initialize(*dice)
    @dice = dice
  end

  def chance
    @dice.reduce(:+)
  end
  
  def yatzy
    return 0 if @dice.uniq.count > 1

    50
  end

  def ones
    add_up(1)
  end

  def twos
    add_up(2)
  end

  def threes
    add_up(3)
  end
  
  def fours
    add_up(4)
  end

  def fives
    add_up(5)
  end

  def sixes
    add_up(6)
  end

  def score_pair
    pairs = count_faces.select {|face, count| count >= 2 }.keys
    return 0 if pairs.none?
    2 * pairs.max
  end

  def two_pair
    pairs = count_faces.select { |face, count| count >= 2 }.keys
    return 0 if pairs.size < 2
    2 * pairs.reduce(0, :+)
  end

  def four_of_a_kind
    quads = count_faces.select { |face, count| count >= 4 }.keys
    return 0 if quads.none?
    4 * quads.first
  end

  def three_of_a_kind
    triplet = count_faces.select { |face, count| count >= 3 }.keys
    return 0 if triplet.none?
    3 * triplet.first
  end

  def small_straight
    return 0 unless @dice.sort == [ 1, 2, 3, 4, 5 ]
    
    15
  end

  def large_straight
    return 0 unless @dice.sort == [ 2, 3, 4, 5, 6 ]

    20
  end

  def self.fullHouse(*dice)
    count_faces = Hash[ 
       dice.uniq.collect { |face| [ face, dice.count(face) ] }
    ]
    triples = count_faces.select { |face, count| count == 3 }
    pair = count_faces.select { |face, count| count == 2 }
    return 0 if triples.none? or pair.none?

    dice.reduce(0, :+)
  end

  private

  def count_faces
    Hash[
      @dice.uniq.collect { |face| [ face, @dice.count(face) ]}
    ]
  end
  
  def add_up(face_value)
    @dice.select { |face| face == face_value }.reduce(0, :+)
  end
end
