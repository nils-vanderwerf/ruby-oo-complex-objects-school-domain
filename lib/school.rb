# code here!
class School 
    attr_accessor :name, :roster
    def initialize name
        @name = name
        @roster = {}
        
    end

    def add_student student, grade
        roster[grade] ||= [] #If no grade, initialize a new key with an empty array, hence the ||=
        roster[grade] << student
    end
    
    def grade (student_grade)
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

school = School.new("Bayside High School")

school.add_student("Seth Green", 7)
school.add_student("Meth Green", 7)
school.add_student("Harry Potter", 8)
school.add_student("Miriam", 8)
school.add_student("Josh Potter", 8)
school.add_student("Haico van der Werf", 8)
school.add_student("Zach Morris", 9)
school.add_student("John Smith Morris", 9)
school.add_student("Christina Walk", 10)
school.add_student("Anna McRae", 10)

school.roster

puts "Year 7: #{school.grade(7)}"
puts "Year 8: #{school.grade(8)}"
puts "Year 9: #{school.grade(9)}"
puts "Year 10: #{school.grade(10)}"

puts "School sorted: #{school.sort}"





