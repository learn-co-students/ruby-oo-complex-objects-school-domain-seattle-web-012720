# code here!
class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if !@roster[grade]
            @grade_members = []
            @grade_members << student_name
            @roster[grade]= @grade_members
        else
            @roster[grade].push(student_name)
        end
        @roster
    end

    def grade(grade_num)
        @roster.each {|grade, names|
            if grade_num == grade
                return names
            end
        }
    end

    def sort
        self.roster.each {|grade, names|
            order_names = names.sort
            roster[grade] = order_names
    }
    roster
    end

end