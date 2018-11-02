class Instructor

  @@all = []

  def initialize (name)
      @name = name
      @@all << self
  end


  def self.all
    @@all
  end

  def self.pass_student (student_name, test_name)
    #feed into test status
    test_name.boating_test_status = "passed"
    #student_name not used...
  end

  def self.fail_student (student_name, test_name)
    #feed into test status
    test_name.boating_test_status = "failed"
  end

  def self.student_grade_percentage (student_name)
      #array.size of all the tests that student has passed
      #dividied by an array.size of all the tests that that student has taken

      array1 = BoatingTest.all.select {|test| test.student == student_name}

      array2 = array1.select {|test| test.boating_test_status == "passed"}

      to_perc = (array2.length.to_f / array1.length.to_f) * 100

      "#{to_perc}%"
  end

end
