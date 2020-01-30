require 'pry'

class School
    def initialize(roster)
        @roster = Hash.new
    end

    attr_accessor :roster

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
        @roster
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each { |k,v|
            @roster[k] = v.sort
        }
        Hash[@roster.sort]
    end
end

#1 => [a,b,c]