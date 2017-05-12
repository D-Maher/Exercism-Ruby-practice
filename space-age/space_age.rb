class SpaceAge
  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    seconds / 31557600.to_f.round(2)
  end

end
