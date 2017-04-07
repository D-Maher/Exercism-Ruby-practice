class SumOfMultiples

  def initialize(*args)
    @factors = args
  end

  def to(target)
    return 0 if target < factors.min

    multiples_to_add = []

    (factors.min...target).each do |num|
      factors.each do |factor|
        if num % factor == 0
          multiples_to_add << num
          break
        end
      end
    end

    multiples_to_add.reduce(:+)
  end


  private

  attr_reader :factors

end