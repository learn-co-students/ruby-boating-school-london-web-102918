class Student

  @@all = []

  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

# --- INSTANCE METHODS ----

  def add_boating_test(boating_test_name, status, instructor)
  BoatingTest.new(boating_test_name, status, instructor, self)
  end

# ----- CLASS METHODS -----

  def self.find_student(first_name)
    @@all.find {|student| first_name == student}
  end

  def self.all
    @@all
  end

end
