class Queens

  def initialize(args = {})
    if args[:white]
      if valid_position?(args[:white])
        @white = args[:white]
      else
        raise ArgumentError, "The white queen must have a rank and file that exists on the board"
      end
    end

    if args[:black]
      if valid_position?(args[:black])
        @black = args[:black]
      else
        raise ArgumentError, "The black queen must have a rank and file that exists on the board"
      end
    end
  end

  def valid_position?(position = [])
    position.reject { |coord| (0..7).include?(coord) }.empty?
  end

  def attack?
    return true if same_rank?
    return true if same_file?
    return true if diagonal?
  end

  def same_rank?
    white[0] == black[0]
  end

  def same_file?
    white[1] == black[1]
  end

  def diagonal?
    for n in 0..7
      return true if white[0] + n == black[0] && white[1] + n == black[1] 
      return true if white[0] + n == black[0] && white[1] - n == black[1]
      return true if white[0] - n == black[0] && white[1] + n == black[1]
      return true if white[0] - n == black[0] && white[1] - n == black[1]
    end

    false
  end

  private 

  attr_reader :white, :black 

end


module BookKeeping
  VERSION = 2
end
