class School

  def initialize
    @student_roster = {}
  end

  def students(grade)
    return [] if student_roster[grade].nil?

    student_roster[grade]
  end


  private

  attr_accessor :student_roster

end


module BookKeeping

  VERSION = 3

end
