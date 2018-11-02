
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


	def self.fail_student(student_first_name, boating_test_name)
		test_to_fail = BoatingTest.all.find {|test| test.test_name == boating_test_name && test.student.first_name == student_first_name}
		test_to_fail.test_status = "failed"

	end

	def self.pass_student(student_first_name, boating_test_name)
		test_to_pass= BoatingTest.all.find { |test| test.student.first_name == student_first_name && test.test_name == boating_test_name}
		test_to_pass.test_status = "passed"
	end

	def self.student_grade_percentage(student_first_name)
		tests_taken = []
		tests_passed = []
	  tests_taken = BoatingTest.all.each {|test| test.student.first_name == student_first_name}
		tests_passed << BoatingTest.all.find {|test| test.test_status == "passed"}
		tests_passed.length * 100 / tests_taken.length
	end
end
