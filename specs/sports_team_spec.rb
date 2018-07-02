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
  # Check that the coach can be changed by the setter
  def test_set_team_coach()
    team = SportsTeam.new("Belgium", ["Player 1", "Player 2", "Player 3"], "Mr Belgium")
    team.set_coach("Mr France")
    assert_equal("Mr France", team.coach())
  end

end
