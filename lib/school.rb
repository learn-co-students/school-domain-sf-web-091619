require 'pry'
class School
    attr_accessor :roster, :school_name
    def initialize(name)
        @name = name
        @roster = {}
    end
    def student
        @student = student
    end
    def add_student (student_name, grade)
        if !@roster.include?(grade)
            @roster[grade] = []
        end
           @roster[grade] << student_name
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |grade, student_name|
            # binding.pry
            @roster[grade] = student_name.sort
        end
    end
end
