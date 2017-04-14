require 'pry'

class Game

  def initialize
    @rolls = []
  end


  def roll(pins)
    rolls << pins
  end

  def score
    total_score = 0

    frames = rolls.each_slice(2).to_a

    frames.each do |frame|
      frame_score = 0

      if frame.reduce(:+) == 10
        frame_score += 10 + frames[frames.index(frame) + 1][0]
      else
        frame_score = frame.reduce(:+)
      end

      total_score += frame_score
    end

    total_score
  end

  private

  attr_reader :rolls

end


module BookKeeping

  VERSION = 3

end