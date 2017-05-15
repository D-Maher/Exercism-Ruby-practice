class Alphametics
  def self.solve(input)
    solved = false

    until solved
      leading_zeroes = false
      possible_digits = %w(0 1 2 3 4 5 6 7 8 9)
      alphametics_hash = {}

      letter_string = extract_letters(input)

      leading_letters = get_leading_letters(letter_string)

      unique_letters = get_unique_letters(letter_string)

      unique_letters.each do |letter|
        possible_digit = possible_digits.sample
        possible_digits.delete(possible_digit)
        letter_string.gsub!(letter, possible_digit)
        alphametics_hash[letter] = possible_digit.to_i
      end  

      numbers = extract_numbers(letter_string)

      return {} if numbers.length <= 2

      leading_letters.each do |letter|
        if alphametics_hash[letter] == 0
          leading_zeroes = true
        end
      end

      if numbers.slice(0..-2).reduce(:+) == numbers.last && !leading_zeroes
        solved = true
      end
    end
    
    alphametics_hash
  end

  def self.extract_letters(input)
    input.scan(/[A-Z]+/).join(" ")
  end

  def self.get_unique_letters(letter_string)
    letter_string.split(" ").map { |letter_group| letter_group = letter_group.chars }.flatten.uniq.sort
  end

  def self.get_leading_letters(letter_string)
    leading_letters = []

    letter_string.split(" ").each do |letter_group|
      leading_letters << letter_group[0]
    end

    leading_letters.uniq
  end

  def self.extract_numbers(input)
    input.scan(/\d+/).map { |number| number.to_i }
  end

end


module BookKeeping
  VERSION = 4
end
