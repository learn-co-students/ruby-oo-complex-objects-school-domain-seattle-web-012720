require 'pry'

class School
  attr_accessor :name, :roster

    def initialize(name)
    @name = name
    @roster = {}
   end

   def add_student(stu_name, grade)
        if @roster[grade]
            @roster[grade] << stu_name
        else @roster[grade] = []
            @roster[grade] << stu_name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_key { |grade| @roster[grade] = @roster[grade].sort}
    
    end
end
