class Series

  def initialize(series)
    @series = series
  end

  def slices(n)
    series_to_slice = series

    slice_array = []

    until series_to_slice.empty?
      slice_array << series_to_slice.slice!(0...n)
    end

    slice_array
  end


  private

  attr_reader :series

end