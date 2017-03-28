class Pangram

  ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  def self.pangram?(phrase)
    return false if phrase.empty?

    letters = phrase.downcase.chars.select { |char| ALPHABET.include?(char) }.uniq.sort

    letters == ALPHABET
  end

end


module BookKeeping

  VERSION = 4

end
