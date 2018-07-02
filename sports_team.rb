class SportsTeam

  # Initialize argument list
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  # Getters
  def name()
    return @name
  end

  def players()
    return @players
  end

  def coach()
    return @coach
  end

  # Setters
  def set_coach(newcoach)
    @coach = newcoach
  end

  # Class methods

end
