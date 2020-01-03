require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student (student_name, grade)
        @student_name = student_name
        @grade = grade

        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(num)
        roster[num]
    end

    def sort
        roster.each_value { |info| info.sort! }
        
    end
end