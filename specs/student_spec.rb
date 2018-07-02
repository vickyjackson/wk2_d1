require 'minitest/autorun'
require_relative '../student.rb'

class TestStudent < Minitest::Test

  # Create a new instance of the Student class
  # Check that the name returned by the getter is equal to "Raphael"
  def test_student_name()
    student = Student.new("Raphael", "E23")
    assert_equal("Raphael", student.name())
  end

  # Create a new instance of the Student class
  # Check that the cohort returned by the getter is equal to "E23"
  def test_student_cohort()
    student = Student.new("Raphael", "E23")
    assert_equal("E23", student.cohort())
  end

  # Create a new instance of the Student class
  # Check that the name can be changed by the setter
  def test_set_student_name()
    student = Student.new("Raphael", "E23")
    student.set_name("Daniel")
    assert_equal("Daniel", student.name)
  end

  # Create a new instance of the Student class
  # Check that the cohort can be changed by the setter
  def test_set_student_cohort()
    student = Student.new("Raphael", "E23")
    student.set_cohort("E22")
    assert_equal("E22", student.cohort)
  end

  # Create a new instance of the Student class
  # Check that what the student says is equal to "Hey it's me Raphael!"
  def test_student_can_talk()
    student = Student.new("Raphael", "E23")
    assert_equal("Hey it's me Raphael!", student.talk("Hey it's me Raphael!"))
  end

  # Create a new instance of the Student class
  # Check that what the student says is equal to "I love Ruby"
  def test_student_say_favourite_language()
    student = Student.new("Raphael", "E23")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end

end
