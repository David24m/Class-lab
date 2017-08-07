require( "minitest/autorun" )
require_relative( "./codeclan_student" )

class TestStudent < Minitest::Test

  def test_student_name
    codeclan_student = Student.new("David", 15)
    codeclan_student.set_name("Kirsty")
    assert_equal( "Kirsty", codeclan_student.name() )
  end

  def test_cohort
    codeclan_student = Student.new("David", 15)
    assert_equal( 15, codeclan_student.cohort() )
  end

  def test_talk
    codeclan_student = Student.new("David", 15)
    assert_equal("I am a man, Not a number!", codeclan_student.talk() )
  end

  def test_language
    codeclan_student = Student.new("David", 15)
    assert_equal( "I love Ruby!", codeclan_student.say_favourite_language("ruby") )
  end

end
