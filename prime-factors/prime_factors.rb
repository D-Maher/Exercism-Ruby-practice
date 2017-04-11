class PrimeFactors

  def self.for(num)

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
