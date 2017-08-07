require( "minitest/autorun" )
require_relative( "./sports_team" )

class TestTeam < Minitest::Test

  def test_team_name
    sports_team = Team.new("Man United", ["De Gea", "Jones", "Matic", "Martial", "Lukaku"], "Jose Mourinho", 0)
    # sports_team.manager = "David Moyes"
    sports_team.set_manager("David Moyes")
    assert_equal("David Moyes", sports_team.manager())
  end

  def test_squad
    sports_team = Team.new("Man United", ["De Gea", "Jones", "Matic", "Martial", "Lukaku"], "Jose Mourinho", 0)
    sports_team.set_squad("Rashford")
    assert_equal(["De Gea", "Jones", "Matic", "Martial", "Lukaku", "Rashford"], sports_team.squad())
  end

  def test_player_present
    sports_team = Team.new("Man United", ["De Gea", "Jones", "Matic", "Martial", "Lukaku"], "Jose Mourinho", 0)
    assert_equal(true, sports_team.find_player("Matic"))
  end

  def test_points
    sports_team = Team.new("Man United", ["De Gea", "Jones", "Matic", "Martial", "Lukaku"], "Jose Mourinho", 0)
    assert_equal(0, sports_team.points())
  end

  def test_points_update
    sports_team = Team.new("Man United", ["De Gea", "Jones", "Matic", "Martial", "Lukaku"], "Jose Mourinho", 0)
    assert_equal(3, sports_team.points_update("win"))
  end

end
