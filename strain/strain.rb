class Array

  def keep
    self.select {|item| yield(item)}
  end

end