# # code here!
# class School
#     attr_accessor :roster
    
    
#     def initialize
#         @roster = {}
#     end

#     def add_student
#         @roster << self
#     end
# end

require "pry"

class School
    attr_accessor :name, :roster

    def initialize(name)
        @roster = {}
        # @roster << name
        @name = name
    end
    def add_student(name, grade)
        @roster[grade] ||= []
        # binding.pry
        @roster[grade] << name
    end
    def grade(grade)
        @roster[grade]
    end
    # def sort
    #     students = {}
    #     roster.each do |name, grade|
    #         students[grade] = name.sort
    #     end
    #     # students << 
    # end
    # # students

    def sort
        student_list = {}
        roster.each do |grade, name|
            student_list[grade] = name.sort
            # binding.pry
        end
        student_list
    end
end

# @school = School.new