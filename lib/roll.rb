class Roll
  extend Forwardable
  include Enumerable
  def_delegators :@dice, :uniq, :count, :sort

  def initialize(dice)
    @dice = dice
    @tally = Hash[
        uniq.collect { |face| [face, count(face)] }
    ]
  end

  def each &block
    @dice.each &block
  end

  def add_up
    to_add_up = @dice
    to_add_up = select { |face| yield face } if block_given?
    to_add_up.reduce(0, :+)
  end

  def faces_with(&block)
    @tally.select { |face, count| block.call(count) }.keys
  end
end