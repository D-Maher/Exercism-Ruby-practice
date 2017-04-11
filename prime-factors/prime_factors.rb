class PrimeFactors

  def self.for(num)
    prime_factors = []

    divisor = 2

    while divisor <= num
      if num % divisor == 0
        prime_factors << divisor
        num = num / divisor
      else
        divisor += 1
      end
    end

    prime_factors
  end
  
end
