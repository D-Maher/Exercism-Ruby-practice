class Hamming

  def self.compute(strand_1 = "", strand_2 = "")
    hamming_distance = 0

    return hamming_distance if strand_1 == strand_2

    raise ArgumentError if strand_1.length != strand_2.length

    strand_1.chars.each_with_index do |nuc, index|
      if nuc != strand_2.chars[index]
        hamming_distance += 1
      end
    end
    
    # i = 0
    # strand_1.chars.each do
    #   if strand_1[i] != strand_2[i]
    #     hamming_distance += 1
    #   end
    #   i += 1
    # end


    # for i in 0...strand_1.length
    #   if strand_1[i] != strand_2[i]
    #     hamming_distance +=1
    #   end
    # end
    
    hamming_distance
  end

end


module BookKeeping

  VERSION = 3

end