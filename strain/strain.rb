class Array

  def keep
    self.select {|item| yield(item)}
  end

  def discard
    self - self.select {|item| yield(item)}
  end

end