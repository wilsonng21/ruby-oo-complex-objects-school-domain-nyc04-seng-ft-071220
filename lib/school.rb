# code here!
require 'pry'
class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !roster.include? grade
            roster[grade] = []
            roster[grade] << name
        elsif roster.include? grade 
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.transform_values do |students|
            students.sort
        end
    end


end