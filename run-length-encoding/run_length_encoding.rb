class RunLengthEncoding

  def self.encode(input)
    encoded_input = ""

    runs = input.scan(/((.)\2*)/)

    runs.each do |run|
      if run[0].length > 1
        encoded_input += run[0].length.to_s 
      end

      encoded_input += run[1]
    end

    encoded_input
  end

  def self.decode(input)
    decoded_input = ""

    runs = input.scan(/\d+\w|\w/).flatten

    runs.each do |run|
      char = run.chars.last

      if run.length > 1
        run.chop.to_i.times { decoded_input += char }
      else
        decoded_input += char
      end 
    end

    decoded_input
  end

end


module BookKeeping

  VERSION = 2

end
