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
    counts = Hash[
      @dice.uniq.map { |face| [face, @dice.count(face)] }
    ]
    return 0 if counts.none? { |face, count| count >= 2 }
    pairs = counts.select {|face, count| count >= 2 }.keys
    2 * pairs.max
  end

  def two_pair
    counts = Hash[
      @dice.uniq.collect { |face| [face, @dice.count(face)] }
    ]
    pairs = counts.select { |face, count| count >= 2 }.keys
    return 0 if pairs.size < 2
    2 * pairs.reduce(0, :+)
  end

  def self.four_of_a_kind( _1,  _2,  d3,  d4,  d5)
    tallies = [0]*6
    tallies[_1-1] += 1
    tallies[_2-1] += 1
    tallies[d3-1] += 1
    tallies[d4-1] += 1
    tallies[d5-1] += 1
    for i in (0..5)
      if (tallies[i] >= 4)
        return (i+1) * 4
      end
    end
    return 0
  end

  def self.three_of_a_kind(*dice)
    t = [0]*6
    t[dice[0]-1] += 1
    t[dice[1]-1] += 1
    t[dice[2]-1] += 1
    t[dice[3]-1] += 1
    t[dice[4]-1] += 1
    for i in [0,1,2,3,4,5]
      if (t[i] >= 3)
        return (i+1) * 3
      end
    end
    0
  end

  def self.smallStraight( d1,  d2,  d3,  d4,  d5)
    tallies = [0]*6
    tallies[d1-1] += 1
    tallies[d2-1] += 1
    tallies[d3-1] += 1
    tallies[d4-1] += 1
    tallies[d5-1] += 1
    (tallies[0] == 1 and
      tallies[1] == 1 and
      tallies[2] == 1 and
      tallies[3] == 1 and
      tallies[4] == 1) ? 15 : 0
  end

  def self.largeStraight( d1,  d2,  d3,  d4,  d5)
    tallies = [0]*6
    tallies[d1-1] += 1
    tallies[d2-1] += 1
    tallies[d3-1] += 1
    tallies[d4-1] += 1
    tallies[d5-1] += 1
    if (tallies[1] == 1 and tallies[2] == 1 and tallies[3] == 1 and tallies[4] == 1 and tallies[5] == 1)
      return 20
    end
    return 0
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
  
  def add_up(face_value)
   @dice.select { |face| face == face_value }.reduce(0, :+)
  end
end
