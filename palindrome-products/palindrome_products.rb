class Palindromes

  def initialize(args = {})
    @max_factor = args[:max_factor]
    @min_factor = args.fetch(:min_factor) { 1 }

    @palindrome_products = {}
  end

  def is_palindrome?(number)
    number.to_s == number.to_s.reverse
  end

  def generate
    for x in min_factor..max_factor
      for y in x..max_factor
        potential_product = x * y
        if is_palindrome?(potential_product)
          product = palindrome_products.fetch(potential_product) { palindrome_products[potential_product] = PalindromeProduct.new(x * y) }
          product.add_new_factors([x, y])
        end
      end
    end
  end

  def largest
    palindrome_products.fetch(palindrome_products.keys.max)
  end


  private

  attr_reader :max_factor, :min_factor
  attr_accessor :palindrome_products

end

class PalindromeProduct
  attr_reader :value
  attr_accessor :factors

  def initialize(value)
    @value = value
    @factors = []
  end

  def add_new_factors(new_factors)
    factors << new_factors
  end
  
end
