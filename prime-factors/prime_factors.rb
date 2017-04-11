class PrimeFactors

  def self.for(num)
    prime_factors = []

      for possible_factor in 2...num
        if num % possible_factor == 0 && possible_factor.is_prime?
          prime_factors << possible_factor
        end
      end

    prime_factors
  end

  def is_prime?(num)
    return false if num < 2
    return false if num.even?

    for counter in 2...num
      return false if num % counter == 0
    end

    true
  end

end
