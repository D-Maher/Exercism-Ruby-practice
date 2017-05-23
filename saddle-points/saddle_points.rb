class Matrix

  attr_reader :rows, :columns

  def initialize(matrix_string)
    @matrix_string = matrix_string
    @rows = convert_to_grid
    @columns = rows.transpose
  end

  def convert_to_grid
    grid = []

    matrix_string.split("\n").each do |row_string|
      row = []

      row_string.split(" ").each do |cell|
        row << cell.to_i
      end

      grid << row
    end

    grid
  end

  def greatest_in_row?(value, row)
    row.each do |other_value|
      return false if other_value > value
    end

    true
  end

  def least_in_column?(value, column)
    column.each do |other_value|
      return false if other_value < value
    end

    true 
  end

  def saddle_points
    saddle_points = []

    (0...rows.length).each do |x|
      (0...columns.length).each do |y|
        value = rows[x][y]

        if greatest_in_row?(value, rows[x]) && least_in_column?(value, columns[y])
          saddle_points << [x, y]
        end
      end
    end

    saddle_points
  end


  private

  attr_reader :matrix_string

end
