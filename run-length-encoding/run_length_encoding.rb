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

    runs = input.scan(/(\d\w|
      \w)/).flatten

    runs.each do |run|
      run_info = run.chars[0]

      if run_info.to_i > 0
        run_info.to_i.times { decoded_input += run.chars[1] }
      else
        decoded_input += run_info
      end 
    end

    decoded_input
  end

end


module BookKeeping

  VERSION = 2

end
