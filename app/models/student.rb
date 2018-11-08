class Student

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, instructor_name)
    BoatingTest.new(test_name, instructor_name, self)
  end

  def self.find_student(name_string)
    all.find {|student| student.name == name_string}
  end

end
