class SportsTeam

  attr_reader :name, :players, :coach, :points
  attr_writer :coach,

  def initialize(team_name,players_array,coach_name,team_points)
    @name = team_name
    @players = players_array
    @coach = coach_name
    @points = team_points
  end

  def add_player(newplayer)
    @players.push(newplayer)
  end

  def search_player(search)
    for player in @players
      return true if (player == search)
    end
    return false
  end

  def points_calculator(win_condition)
    @points += 1 if (win_condition == true)
  end

end
