class Array

  def keep
    kept_items = []

    self.each do |item|
      kept_items << item if yield(item)
    end

    kept_items
  end

  def discard
    discarded_items = []

    self.each do |item|
      discarded_items << item unless yield(item)
    end

    discarded_items
  end

end