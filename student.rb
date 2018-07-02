class Student

  # Initialize the argument list
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  # Getters
  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  # Setters
  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  # Class methods
  def say(phrase)
    return phrase
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end
end
