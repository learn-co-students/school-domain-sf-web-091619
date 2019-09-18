
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end 

  def add_student(name, grade)
    # if @roster[grade]
    #   @roster[grade] = []
    # end
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.reduce({}) do |memo, (grade, students)| 
      memo[grade] = students.sort
      memo
    end
  end
end