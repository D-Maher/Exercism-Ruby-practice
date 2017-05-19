class FlattenArray
  VERSION = 1

  def self.flatten(array)
    array.flatten.select { |elem| elem != nil }
  end

end
