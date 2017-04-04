class Array

  def accumulate
    new_collection = self.map { |item| yield(item) }
  end

end


module BookKeeping

  VERSION = 1

end
