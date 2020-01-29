# code here!
require 'pry'

class School 

    attr_accessor = :roster, :name 
    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def name 
        @name 
    end 

    def roster 
        @roster
    end 


    def add_student(name, grade)
         
        #if the grade exists, add student 
        #if the grade does not exist, add the grade and student
        if @roster[grade]
            @roster[grade].push(name)
        else 
            @roster[grade] = [name]
        end 
    end 

    def grade(grade) 
        @roster[grade]
    end 

    def sort
        #sort each student in each grade
        #map returns an array 
        #binding.pry
        @roster.each do |g, s|
            #binding.pry 
             s = s.sort!
        end
        #binding.pry 
        @roster
         
    end 

end 


