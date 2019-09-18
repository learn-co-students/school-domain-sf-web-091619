require 'pry'

class School

    def initialize(new_student)
        @new_student = new_student
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(new_student, grade)
        @new_student = new_student
        @grade = grade
        @roster[grade] ||= []
        @roster[grade] << new_student 
    end

    def grade(grade)
        @grade = grade
        @roster[grade]
    end 

    def sort
        @roster.each do |grade, value| 
            @roster[grade] = value.sort
        end
    end
end

# require 'pry'

# class School
#     attr_accessor :roster
#     def initialize(new_school)
#         @new_school = new_school
#         @roster = {}
#     end

#     def add_student(new_student, grade)
#         @roster[grade] ||= []
#         @roster[grade] << new_student 
#     end

#     def grade(grade)
#         @roster[grade]
#     end 

#     def sort
#         @roster[grade].each_value {|name| name.sort} 
    
#     end
# end