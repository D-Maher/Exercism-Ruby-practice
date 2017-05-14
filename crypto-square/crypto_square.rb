class Crypto

  def initialize(input_text)
    @input_text = input_text
  end

  def normalize_plaintext
    input_text.downcase.scan(/\w+/).join
  end

  def size
    square_size = Math.sqrt(normalize_plaintext.length)
    square_size.to_i == square_size ? square_size : square_size.floor + 1
  end

  def plaintext_segments
    square = []
    normalized_string = normalize_plaintext

    until normalized_string.length == 0
      square << normalized_string.slice!(0...size)
    end

    square
  end

  def ciphertext
    cipher_string = ""

    for i in 0...size do
      plaintext_segments.each do |segment|
        unless segment[i].nil?
          cipher_string += segment[i]
        end
      end
    end

    cipher_string
  end


  private

  attr_reader :input_text

end
