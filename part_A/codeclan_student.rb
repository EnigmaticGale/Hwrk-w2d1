
class CodeClanStudent

  attr_reader :name, :cohort
  attr_writer :name, :cohort


  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(newname)
    @name = newname
  end

  def set_cohort(newcohort)
    @cohort = newcohort
  end

  def speak
    return "Hello!"
  end

  def say_fave_language(language)
    return "I love #{language}!"
  end
end
