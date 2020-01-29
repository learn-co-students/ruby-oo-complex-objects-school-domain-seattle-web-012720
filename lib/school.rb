class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if @roster[grade].nil? 
            @roster[grade] = []
        end
        @roster[grade] << student
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
