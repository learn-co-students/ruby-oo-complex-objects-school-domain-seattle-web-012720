class School
    
    attr_accessor :name, :grade_number

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster 
        @roster
    end

    def add_student(name, grade_number)
       if @roster.include?(grade_number) == false
          @roster[grade_number] = []
       end
       @roster[grade_number] << name
    end

    def grade(grade_number)
        @roster[grade_number]
    end
    
    def sort 
        @roster.each do |grade_number, name|
            @roster[grade_number] = name.sort
        end
    end
end

