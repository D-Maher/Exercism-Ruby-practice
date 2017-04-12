class ETL

  def self.transform(old)
    new = {}

    old.each do |val, letters|
      letters.each do |letter|
        new[letter.downcase] = val
      end
    end

    new
  end

end