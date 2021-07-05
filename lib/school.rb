class School 
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, key_number)
        # this will create a key number pointedd to an empty array
        #the ||= will make it possible to GET ALL students from that grade, even if it's not empty. a || a = b
        roster[key_number] ||= []
        roster[key_number] << student_name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end


end

school = School.new('Coc')
school.add_student('Gabriel', 10)
school.add_student('Bibi', 11)
school.add_student('Rafa', 12)
school.add_student('Ana', 12)
puts school.grade(12)





