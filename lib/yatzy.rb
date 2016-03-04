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

  def self.fullHouse( d1,  d2,  d3,  d4,  d5)
    tallies = []
    _2 = false
    i = 0
    _2_at = 0
    _3 = false
    _3_at = 0

    tallies = [0]*6
    tallies[d1-1] += 1
    tallies[d2-1] += 1
    tallies[d3-1] += 1
    tallies[d4-1] += 1
    tallies[d5-1] += 1

    for i in Array 0..5
      if (tallies[i] == 2)
        _2 = true
        _2_at = i+1
      end
    end

    for i in Array 0..5
      if (tallies[i] == 3)
        _3 = true
        _3_at = i+1
      end
    end

    if (_2 and _3)
      return _2_at * 2 + _3_at * 3
    else
      return 0
    end
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
