class Array

  def accumulate
    new_collection = self.map { |item| yield(item) }
  end

end

# accumulate is called on an instance of the class Array and takes a block as an argument; it yields to the block passed in and produces a new array based on the original array that was altered according to the block


module BookKeeping

  VERSION = 1

end
