class BeerSong

  def verse(num)
    if num > 2
      <<-TEXT
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num - 1} bottles of beer on the wall.
TEXT
    elsif num == 2
      <<-TEXT
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num - 1} bottle of beer on the wall.
TEXT
    elsif num == 1
      <<-TEXT
#{num} bottle of beer on the wall, #{num} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
TEXT
    else
      <<-TEXT
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
TEXT
    end
  end

  def verses(start_num, end_num)
    song = ""

    while start_num >= end_num
      if start_num > end_num
        song += verse(start_num) + "\n"
      else
        song += verse(end_num)
      end
      start_num -= 1
    end
    
  end

end


module BookKeeping

  VERSION = 3

end
