class Sieve

  def initialize(n)
    @max_num = n
    @numbers_in_range = (2..n).to_a
  end

  def primes
    return [] if max_num < 2

    composites = []

    numbers_in_range.each do |test_num|
      numbers_in_range.each do |num|
        if num != test_num && num % test_num == 0
          composites << num
        end
      end
    end

    numbers_in_range.reject { |num| composites.include?(num) }
  end

  private

  attr_reader :max_num, :numbers_in_range

end


module BookKeeping

  VERSION = 1

end
