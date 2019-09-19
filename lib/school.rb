class School
    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name,grade)
        @roster[grade] = [] unless @roster.include?(grade)
        @roster[grade] << student_name
    end
    
    def grade(student_grade)
        @roster[student_grade]
    end 

    def sort
        # @roster.map do |grade, students| 
        #     {grade => students.sort!}
        # end
        # @roster.to_h
        @roster.merge!(@roster){|k,v| v.sort }
    end

end