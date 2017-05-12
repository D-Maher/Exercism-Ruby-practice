class Bst
  VERSION = 1

  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(new_data)
    if new_data <= data
      self.left = Bst.new(new_data)
    else
      self.right = Bst.new(new_data)
    end
  end

end
