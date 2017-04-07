class School

  def initialize
    @student_roster = Hash.new([])
  end

  def students(grade)
    student_roster[grade]
  end

  def add(student, grade)
    if student_roster[grade].empty?
      student_roster[grade] = [student]
    else
      student_roster[grade] << student
    end
  end


  private

  attr_accessor :student_roster

end


module BookKeeping

  VERSION = 3

end
