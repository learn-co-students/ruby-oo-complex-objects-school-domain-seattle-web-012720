class School

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster 
        @roster 
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade].push(student_name)
        else
            @roster[grade] = [student_name]
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort 
        end 
        @roster
    end
end