class BoatingTest

  attr_accessor :student, :boating_test_name, :boating_test_status, :instructor

  @@all = []

  def initialize (boating_test_name, boating_test_status, instructor, student = nil)
    @boating_test_name = boating_test_name.to_s
    @student = student
    @instructor = instructor
    @boating_test_status = boating_test_status
    @@all << self
  end

  def self.all
    @@all
  end

end
