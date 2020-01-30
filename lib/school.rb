# code here!


class School
attr_accessor :student_name, :student_grade
attr_reader :school_name

@@roster

  def initialize(school_name)
    @school_name = school_name
    @@roster = {}
    
  end
  def add_student(student_name,student_grade)
    @student_name = student_name
    @student_grade = student_grade
    if @@roster[@student_grade] == nil
      @@roster[@student_grade] = []
    end
    @@roster[@student_grade] << @student_name
  end
  def roster
    return @@roster
  end
  def grade(grade)
    @grade = grade
    return @@roster[@grade]
  end
  def sort
    # alphabetic_name_array = []
    # alphabetic_name_array = @@roster.each_value.sort
    # numeric_roster = {}
    @@roster.each_key do |key|
      @@roster[key] = @@roster[key].sort
      
    end
    
    # @@roster.index(alphabetic_name_array[0])
    
    

  end

  # def sort
  #    new_hash = {}
  #    alphabetic_name_hash = []
  #    alphabetic_name_hash = @@roster.each_value.sort

  #    @@roster.each_value.sort.each_key
  #      if 
       
      
  #     return new_hash
  #   end
    
end
