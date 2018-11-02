require "pry"

class Instructor

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.pass_student(student_name, test_name)
    success = BoatingTest.all.find do |bt|
      bt.student.first_name == student_name && bt.test_name
      end
    success.test_status = "Passed"
  end

  def self.fail_student(student_name, test_name)
    failure = BoatingTest.all.find do |bt|
      bt.student.first_name == student_name && bt.test_name
        end
    failure.test_status = "Failed"
  end

end
