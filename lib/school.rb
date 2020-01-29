# code here!
require "pry"
class School
    
    def initialize(name)
@name=name
@hash={}
    end

    def roster 
        @hash
    end


def add_student(key, grade)
    #if @hash.include?(key) == false
       # @hash[value]=[]
    #end
     #@hash[grade] == false
       # @hash[grade] = [key]
       if @hash.include?(grade) == false
        @hash[grade] = [key]
       else @hash[grade] << key



    #if @hash[grade]
   #     @hash[grade] = [key]
    end
#binding.pry
end
def grade(grade)
@hash[grade]
end

 def sort
#@hash.sort_by{|k,v|k
#binding.pry
@hash.each_key {|grade| @hash[grade]=@hash[grade].sort 


}

#}
 end
end
