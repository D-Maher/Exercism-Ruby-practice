class Prime

  def self.nth(n)
    raise ArgumentError if n == 0

    primes_found = 0

    until primes_found == n




    end

  end

end


def is_prime?(number)
  return false if number.even? && number != 2
  return false if number < 2

  check_divisor = number - 1

  while check_divisor > 1
    return false if number % check_divisor == 0
    check_divisor -= 1
  end

  true
end


module BookKeeping

  VERSION = 1

end