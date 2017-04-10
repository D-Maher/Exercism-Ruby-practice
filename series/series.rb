class Series

  def initialize(series)
    @series = series
  end

  def slices(n)
    raise ArgumentError, "Slice length cannot exceed string length" if n > series.length

    slice_array = []

    counter = 0

    while counter < series.length
      slice_array << series.slice(counter...(counter + n))
      counter += 1
    end

    slice_array.select{ |slice| slice.length == n }
  end


  private

  attr_reader :series

end
