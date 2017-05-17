class RailFenceCipher
  VERSION = 1

  def self.encode(message, rails)
    return '' if message.empty?
    return message if rails == 1

    encoded_message = ""

    split_message = message.chars

    # for 2 rails
      # starting with the first letter, add every other letter to encoded_message
      # next, starting with the second letter, add every other letter to encoded_message

    i = 0

    while i < rails
      split_message.each_with_index do |char, index|
        if (index - i) % rails == 0
          encoded_message += char
        end
      end

      i += 1
    end 

    # for 3 rails
      # starting with the first letter, add the letter at the index 4 greater than the previous letter to encoded_message


    encoded_message
  end

end
