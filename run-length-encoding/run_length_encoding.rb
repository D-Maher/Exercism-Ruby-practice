class RunLengthEncoding

  def self.encode(input)
    encoded_input = ""

    groups = input.scan(/((\w)\2*)/)

    groups.each do |group|
      if group[0].length > 1
        encoded_input += group[0].length.to_s 
      end

      encoded_input += group[1]
    end

    encoded_input
  end

end


module BookKeeping

  VERSION = 2

end
