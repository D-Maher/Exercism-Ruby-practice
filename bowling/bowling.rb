class Game
  class BowlingError < StandardError
  end

  def initialize
    @rolls = []
  end

  def roll(pins)
    rolls << pins
  end

  def score
    return 300 if rolls.reject { |roll| roll == 10 }.empty?

    unless rolls.reject { |roll| (0..10).include?(roll) }.empty?
      raise BowlingError, "rolls can only knock down between 0 and 10 pins"
    end

    total_score = 0

    i = 0

    tenth_frame = false

    while i < rolls.length
      roll = rolls[i]
      next_roll = rolls[i + 1]
      roll_after_next = rolls[i + 2]

      if i >= rolls.length - 4
        tenth_frame = true
      end

      if tenth_frame
        total_score += roll
      else
        if roll == 10 # if there is a strike before frame ten
          total_score += 10 + next_roll + roll_after_next
        elsif roll + next_roll == 10
          total_score += 10 + roll_after_next
          i += 1
        else
        raise BowlingError, "cannot score more than ten points in a single frame" if roll + next_roll > 10
          total_score += roll
        end
      end

      i += 1
    end

    total_score
  end


  private

  attr_reader :rolls

end


module BookKeeping

  VERSION = 3

end
