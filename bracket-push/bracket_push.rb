class Brackets
  BRACKET_PAIRS = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
  }

  private_constant :BRACKET_PAIRS

  def self.paired?(bracket_string)
    return true if bracket_string.empty?

    split_bracket_string = bracket_string.chars

    BRACKET_PAIRS.each do |open, close|
      return false if split_bracket_string.count(open) != split_bracket_string.count(close)
    end 

  end

end


module BookKeeping
  VERSION = 4
end
