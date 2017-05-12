class Anagram

  def initialize(word)
    @word = word
  end

  def match(potential_anagrams)
    confirmed_anagrams = []

    potential_anagrams.each do |pa|
      if word.chars.sort == pa.chars.sort 
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
