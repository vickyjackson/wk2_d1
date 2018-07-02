class SportsTeam

  # Getters
  attr_reader :name, :players, :coach, :points

  # Setters
  attr_writer :name, :players, :coach, :points

  # Initialize the argument list
  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  # Class methods
  def add_player_to_players(new_player)
    @players << new_player
  end

  def find_player_in_players(player_to_find)
    for player in @players
      if player == player_to_find
        return player
      end
    end
  end

  def add_points(awarded_points)
    @points += awarded_points
  end

end
