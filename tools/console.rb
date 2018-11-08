require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("Paul")
student2 = Student.new("Bob")

instructor1 = Instructor.new("Miles")
instructor2 = Instructor.new("Mary")
instructor3 = Instructor.new("Moe")

test1 = BoatingTest.new("Test1", "passed", instructor1, student1)
test2 = BoatingTest.new("Test2", "passed", instructor2, student1)
test3 = BoatingTest.new("Test3", instructor3, student1)
test4 = BoatingTest.new("Test4", instructor2, student2)
test5 = BoatingTest.new("Test5", instructor1, student2)

binding.pry
puts "hello" #leave this here to ensure binding.pry isn't the last line
