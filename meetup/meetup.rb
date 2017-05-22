class Meetup

  def initialize(month, year)
    @whole_month = (Date.new(year, month, 1)..Date.new(year, month, -1))
  end

  def day(weekday, schedule)
    target_weekdays = whole_month.select { |date| date.send("#{weekday}?") }
    case schedule
    when :first then target_weekdays[0]
    when :second then target_weekdays[1]
    when :third then target_weekdays[2]
    when :fourth then target_weekdays[3]
    when :last then target_weekdays[-1]
    when :teenth
      target_weekdays.select { |weekday| (13..19).include?(weekday.mday) }.first
    end
  end


  private

  attr_reader :whole_month

end
