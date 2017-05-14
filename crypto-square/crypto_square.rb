class Crypto

  def initialize(input_text)
    @input_text = input_text
  end

  def normalize_plaintext
    input_text.downcase.scan(/\w+/).join
  end


  private

  attr_reader :input_text

end
