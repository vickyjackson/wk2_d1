require 'minitest/autorun'
require_relative '../sports_team.rb'

class TestSportsTeam < Minitest::Test

  # Create a new instance of the SportsTeam class
  # Check that the name returned by the getter is equal to "Belgium"
  def test_team_name()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    assert_equal("Belgium", team.name())
  end

  # Create a new instance of the SportsTeam class
  # Check that the players returned by the getter are equal to ["Player 1", "Player 2", "Player 3"]
  def test_team_players()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    assert_equal(["Player 1", "Player 2", "Player 3"], team.players())
  end

  # Create a new instance of the SportsTeam class
  # Check that the coach returned by the getter is equal to "Mr Belgium"]
  def test_team_coach()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    assert_equal("Mr Belgium", team.coach())
  end

  # Create a new instance of the SportsTeam class
  # Check that the points returned by the getter is equal to 0
  def test_team_points()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    assert_equal(0, team.points())
  end

  # Create a new instance of the SportsTeam class
  # Check that the coach can be changed by the setter
  def test_set_team_coach()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    team.coach = "Mr France"
    assert_equal("Mr France", team.coach())
  end

  # Create a new instance of the SportsTeam class
  # Check that a player can be added to the player array
  def test_add_player_to_players()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    team.add_player_to_players("Player 4")
    assert_equal(["Player 1", "Player 2", "Player 3", "Player 4"], team.players())
  end

  # Create a new instance of the SportsTeam class
  # Check whether or not a player is found in the players array
  def test_find_player_in_players()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    assert_equal("Player 2", team.find_player_in_players("Player 2"))
  end

  # Create a new instance of the SportsTeam class
  # Check that a team's points are be updated if they win a game
  def test_add_points()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    team.add_points(3)
    assert_equal(3, team.points())
  end

end
