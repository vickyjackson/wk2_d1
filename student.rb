class Student

  # Initialize argument list
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
  def set_name(newname)
    @name = newname
  end

  def set_cohort(newcohort)
    @cohort = newcohort
  end

  # Class methods
  def talk(newword)
    return newword
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end
end
