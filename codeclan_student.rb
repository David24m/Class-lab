class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def set_name(new_name)
    @name = new_name
  end

  def cohort
    return @cohort
  end

  def talk
    return "I am a man, Not a number!"
  end

  def say_favourite_language(language)
    language.capitalize!
    return "I love #{language}!"
  end
end
