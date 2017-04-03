class Phrase

  def initialize(input_phrase)
    @input_phrase = input_phrase
  end

  def word_count
    word_count = {}

    word_array = input_phrase.scan(/\w+(?:'\w+)*/).map! { |word| word.downcase }

    word_array.each do |word|
      count = word_array.count(word)

      word_count[word] = count
    end

    word_count
  end


  private

  attr_reader :input_phrase

end


module BookKeeping

  VERSION = 1

end
