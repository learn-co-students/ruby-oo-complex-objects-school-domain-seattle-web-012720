require "pry"

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :roster

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each_key do |key|
            @roster[key] = @roster[key].sort
        end
    end
end