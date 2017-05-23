class Brackets
  BRACKET_PAIRS = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }

  private_constant :BRACKET_PAIRS

  def self.paired?(string)
    split_bracket_string = string.chars.select { |char| BRACKET_PAIRS.to_a.flatten.include?(char) }

    openers = BRACKET_PAIRS.keys
    
    unpaired_openers = []

    split_bracket_string.each do |char|
      if openers.include?(char)
        unpaired_openers << char
      elsif char == BRACKET_PAIRS[unpaired_openers.last]
        unpaired_openers.pop
      else
        unpaired_openers << nil
      end
    end

    unpaired_openers.length == 0
  end
end


module BookKeeping
  VERSION = 4
end
