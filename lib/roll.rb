class Roll
  extend Forwardable
  def_delegators :@dice, :uniq, :count, :sort

  def initialize(dice)
    @dice = dice
    @tally = Hash[
        @dice.uniq.collect { |face| [face, @dice.count(face)] }
    ]
  end

  def add_up
    to_add_up = @dice
    to_add_up = @dice.select { |face| yield face } if block_given?
    to_add_up.reduce(0, :+)
  end

  def faces_with(&block)
    @tally.select { |face, count| block.call(count) }.keys
  end
end