require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestCodeClanStudent < MiniTest::Test

  def setup
    @student = CodeClanStudent.new("Hamish","E28")
  end

  def test_get_name__long_way
    assert_equal("Hamish", @student.get_name())
  end

  def test_get_name_short_way
    assert_equal("Hamish", @student.name())
  end

  def test_get_cohort__long_way
    assert_equal("E28", @student.get_cohort)
  end

  def test_get_cohort__short_way
    assert_equal("E28", @student.cohort)
  end

  def test_set_name__long_way
    assert_equal("Ethan", @student.set_name("Ethan"))
  end

  def test_set_name__short_way
    @student.name = "Ethan"
    assert_equal("Ethan", @student.name)
  end

  def test_set_cohort__long_way
    assert_equal("E29", @student.set_cohort("E29"))
  end

  def test_set_cohort__short_way
    @student.cohort = "E29"
    assert_equal("E29", @student.cohort)
  end

  def test_speak
    assert_equal("Hello!", @student.speak())
  end

  def test_say_fave_language
    assert_equal("I love Ruby!",@student.say_fave_language("Ruby"))
  end
end
