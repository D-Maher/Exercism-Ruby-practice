class SumOfMultiples

  def initialize(*args)
    @factors = args
  end

  def to(num)
    return 0 if num < factors.min
  end


  private

  attr_reader :factors

end