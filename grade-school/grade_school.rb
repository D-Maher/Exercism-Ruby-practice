class School

  def initialize
    @student_roster = Hash.new([])
  end

  def students(grade)
    student_roster[grade]
  end

  def add(student, grade)
    student_roster[grade] << student
  end


  private

  attr_accessor :student_roster

end


module BookKeeping

  VERSION = 3

end
