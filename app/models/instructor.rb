class Instructor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.pass_student(student_name, test_name)
    passed_test = BoatingTest.all.find{ |test| test.test_name == test_name && test.student.first_name == student_name}
    passed_test.test_status = "passed"
  end

  def self.fail_student(student_name, test_name)
    passed_test = BoatingTest.all.find{ |test| test.test_name == test_name && test.student.first_name == student_name}
    passed_test.test_status = "failed"
  end

  def self.student_grade_percentage(first_name)
    right_tests = BoatingTest.all.select {|test| test.student.first_name == first_name }
    passed_tests = right_tests.select {|test| test.test_status == "passed" }
    percentage = (passed_tests.length / right_tests.length) * 100
    puts "#{first_name}'s pass rate is #{percentage}%"
  end



end
