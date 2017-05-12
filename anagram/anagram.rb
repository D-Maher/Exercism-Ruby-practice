class Anagram

  def initialize(word)
    @word = word
  end

  def match(potential_anagrams)
    confirmed_anagrams = []

    potential_anagrams.each do |pa|
      if word.downcase.chars.sort == pa.downcase.chars.sort && word.downcase != pa.downcase
        confirmed_anagrams << pa
      end
    end

    confirmed_anagrams
  end


  private

  attr_reader :word

end


module BookKeeping
  VERSION = 2
end
