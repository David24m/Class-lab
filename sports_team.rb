class Team

  attr_reader( :team_name, :squad, :manager, :points)
  attr_writer( :team_name, :squad, :manager, :points)

  def initialize(team_name, squad, manager, points)
    @team_name = team_name
    @squad = squad
    @manager = manager
    @points = points
  end

puts @squad

  # def team_name
  #   return @team_name
  # end
  #
  # def squad
  #   return @squad
  # end
  #
  # def manager
  #   return @manager
  # end

  def set_manager(manager)
    @manager = manager
  end

  def set_squad(new_player)
    @squad = squad.push(new_player)
  end

  def find_player(lost_player)
    for player in @squad do
    if player == lost_player
      return true
    end
  end
  return false
end

  def points_update(result)
    if result == "win"
      return @points += 3
    else
      return 0
    end
  end
end
