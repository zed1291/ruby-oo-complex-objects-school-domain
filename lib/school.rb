class School
    def initialize school=nil
        @school = school
        @roster = {}
    end
    attr_accessor :school

    def roster
      @roster
    end
    
    def add_student student, grade
      if @roster.has_key?(grade) == false
        @roster[grade] = []
      end
      @roster[grade] << student
    end
    def grade num
      @roster[num]
    end
    def sort
      sorted = @roster.map do |key, value|
        [key, value.sort]
      end
      sorted.to_h
    end
end