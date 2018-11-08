class BoatingTest

  @@all = []

  attr_accessor :name, :status, :instructor, :student

  def initialize(name, status="pending", instructor, student)
    @name = name
    @status = status
    @instructor = instructor
    @student = student
    @@all << self
  end

  def self.all
    @@all
  end

end
