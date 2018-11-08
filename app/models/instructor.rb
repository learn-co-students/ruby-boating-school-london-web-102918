class Instructor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(name, test_name)
    BoatingTest.all.find {|test| test.status = "passed" if test.student.name == name && test.name == test_name}
    "test passed!"
  end

  def self.fail_student(name, test_name)
    BoatingTest.all.find {|test| test.status = "failed" if test.student.name == name && test.name == test_name}
    "test failed..."
  end

  def self.tests_passed(student_name)
    BoatingTest.all.select {|test| test if test.student.name}.select {|test| test.status == "passed"}.length
  end

  def self.student_grade_percentage(student_name)
    perc = self.tests_passed(student_name).to_f / BoatingTest.all.select {|test| test.student.name = student_name}.length
    "#{perc}%"
  end

end
