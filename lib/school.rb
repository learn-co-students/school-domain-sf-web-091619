# code here!
require 'pry'

class School
    attr_accessor :roster, :school_name
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        if !@roster.include?(grade)
            @roster[grade] = []
        end
        # binding.pry
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end
end
