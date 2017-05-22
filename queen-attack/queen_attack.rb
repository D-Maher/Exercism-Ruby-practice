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
    return true if same_rank?(white, black)
    return true if same_file?(white, black)
  end

  def same_rank?(white, black)
    white[0] == black[0]
  end

  def same_file?(white, black)
    white[1] == black[1]
  end


  private 

  attr_reader :white, :black 

end


module BookKeeping
  VERSION = 2
end
