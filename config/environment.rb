require 'bundler/setup'
Bundler.require
require_all 'app'

sam = Student.new("sam")
dan = Instructor.new("Dan")
fuck = Student.new("Fuck")

spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)

binding.pry
0
