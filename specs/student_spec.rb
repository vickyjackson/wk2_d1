require 'minitest/autorun'
require_relative '../student.rb'

class TestStudent < Minitest::Test

  def test_student_name()
    student = Student.new("Raphael", "E23")
    assert_equal("Raphael", student.name())
  end

  def test_student_cohort()
    student = Student.new("Raphael", "E23")
    assert_equal("E23", student.cohort())
  end

  def test_set_student_name()
    student = Student.new("Raphael", "E23")
    student.set_name("Daniel")
    assert_equal("Daniel", student.name)
  end

  def test_set_student_cohort()
    student = Student.new("Raphael", "E23")
    student.set_cohort("E22")
    assert_equal("E22", student.cohort)
  end

  def test_student_can_talk()
    student = Student.new("Raphael", "E23")
    assert_equal("Hey it's me Raphael!", student.talk("Hey it's me Raphael!"))
  end

  def test_student_say_favourite_language()
    student = Student.new("Raphael", "E23")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end

end
