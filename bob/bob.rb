class Bob

  def self.hey(remark)
    response = "Whatever."

    if remark.strip.empty?
      response = "Fine. Be that way!"
    end

    if remark.chars.last == "?"
      response = "Sure."
    end

    if remark.count("a-zA-Z") > 0 && remark.upcase == remark
      response = "Whoa, chill out!"
    end

    response
  end

end