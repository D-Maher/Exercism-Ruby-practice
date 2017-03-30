class Year

  def self.leap?(year)
    is_leap_year = false

    if year % 4 == 0
      is_leap_year = true

      if year % 100 == 0
        is_leap_year = false
      end

      if year % 400 == 0
        is_leap_year = true
      end
    end

    is_leap_year
  end

end


module BookKeeping

  VERSION = 2

end
