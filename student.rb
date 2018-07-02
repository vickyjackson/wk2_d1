class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_name(newname)
    @name = newname
  end

  def set_cohort(newcohort)
    @cohort = newcohort
  end

  def talk(newword)
    return newword
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end
end
