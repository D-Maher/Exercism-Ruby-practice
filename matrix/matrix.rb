class Matrix

  attr_reader :rows, :columns

  def initialize(maxtrix_string)
    @maxtrix_string = maxtrix_string
    @rows = convert_to_grid
    @columns = rows.transpose
  end

  def convert_to_grid
    grid = []

    maxtrix_string.split("\n").each do |row_string|
      row = []
      row_string.split(" ").each do |cell|
        row << cell.to_i
      end
      grid << row
    end

    grid
  end


  private 

  attr_reader :maxtrix_string

end
