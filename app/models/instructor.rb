class Instructor

  @@all = []

  def initialize (name)
      @name = name
      @@all << self
  end


  def self.all
    @all
  end

  def self.pass_student (student_name, test_name)

  end

  def self.fail_student (student_name, test_name)

  end

  def self.student_grade_percentage (student_name)
      #array.size of all the tests that student has passed
      #dividied by an array.size of all the tests
  end

end
