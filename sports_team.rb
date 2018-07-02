class SportsTeam

  # Getters
  attr_reader :name, :players, :coach

  # Setters
  attr_writer :name, :players, :coach

  # Initialize the argument list
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  # Class methods

end
