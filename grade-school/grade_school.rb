class School

  def initialize
    @student_roster = Hash.new([])
  end

  def students(grade)
    student_roster[grade].sort
  end

  def add(student, grade)
    if student_roster[grade].empty?
      student_roster[grade] = [student]
    else
      student_roster[grade] << student
    end
  end

  def students_by_grade
    return [] if student_roster.empty?

    students_by_grade = []

    student_roster.each do |grade, students|
      students_by_grade << {grade: grade, students: students.sort}
    end
    
    students_by_grade.sort_by { |grade_roster| grade_roster[:grade] }
  end


  private

  attr_accessor :student_roster

end


module BookKeeping

  VERSION = 3

end
