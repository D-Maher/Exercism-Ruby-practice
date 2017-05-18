class Acronym

  def self.abbreviate(phrase)
    acronym = ""

    phrase.sub!(/([a-z])([A-Z])/) { |s| s.insert(1, " ") } 

    words = phrase.scan(/\w+/)

    words.each do |word|
      acronym += word[0].upcase
    end

    acronym
  end

end


module BookKeeping
  VERSION = 3
end
