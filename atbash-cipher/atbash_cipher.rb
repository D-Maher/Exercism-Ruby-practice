class Atbash

  @@reverse_alphabet = {
    "a" => "z",
    "b" => "y",
    "c" => "x",
    "d" => "w",
    "e" => "v",
    "f" => "u",
    "g" => "t",
    "h" => "s",
    "i" => "r",
    "j" => "q",
    "k" => "p",
    "l" => "o",
    "m" => "n",
    "n" => "m",
    "o" => "l",
    "p" => "k",
    "q" => "j",
    "r" => "i",
    "s" => "h",
    "t" => "g",
    "u" => "f",
    "v" => "e",
    "w" => "d",
    "x" => "c",
    "y" => "b",
    "z" => "a"
  }

  def self.encode(string)
    encoded_string = ""
    lowercase_chars = string.scan(/[\w+]/).map(&:downcase)

    lowercase_chars.each do |char|
      if @@reverse_alphabet.keys.include?(char)
        encoded_string += @@reverse_alphabet[char]
      else
        encoded_string += char
      end
    end

    encoded_string.scan(/.{1,5}/).join(" ")
  end

end
