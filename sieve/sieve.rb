class Sieve

  def initialize(n)
    @max_num = n
  end

  def primes
    return [] if max_num < 2


  end

  private

  attr_reader :max_num

end


module BookKeeping

  VERSION = 1

end
