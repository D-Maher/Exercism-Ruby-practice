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
      @left.nil? ? @left = Bst.new(new_data) : @left.insert(new_data)
    else
      @right.nil? ? @right = Bst.new(new_data) : @right.insert(new_data)
    end
  end

  def each(node=self, &block)
    return if node.nil?
    return node.to_enum unless block_given?

    each(node.left, &block)
    yield node.data
    each(node.right, &block)
  end

end
