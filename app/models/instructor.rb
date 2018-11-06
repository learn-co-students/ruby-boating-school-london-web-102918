# require 'pry'
class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student, test_name)
    update = BoatingTest.all.find { |info| info.student == student && info.test_name == test_name}
    update.test_status = "passed"
  end

  def self.fail_student(student, test_name)
    update = BoatingTest.all.find { |info| info.student == student && info.test_name == test_name}
    update.test_status = "failed"
  end

  def self.student_grade_percentage(student)
    test_data = BoatingTest.all.select {|data| data.student == student}
    all_tests = test_data.select {|test| test.test_name}
    tests_passed = test_data.select {|test| test.test_status == "passed"}
    test_percentage = (tests_passed.length.to_f / all_tests.length.to_f) * 100
  end

# binding.pry
end
