require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    players = ["Kuxir","Mike","Marky"]
    @team = SportsTeam.new("Flipside",players,"Johnny",0)
  end

  def test_get_team_name
    assert_equal("Flipside", @team.name)
  end

  def test_get_player_name
    assert_equal("Kuxir", @team.players[0])
  end

  def test_get_different_player_name
    assert_equal("Marky", @team.players[2])
  end

  def test_get_coach_name
    assert_equal("Johnny", @team.coach)
  end

  def test_new_player
    before_count = @team.players.length
    before_count += 1
    @team.add_player("meta")
    assert_equal(before_count, @team.players.length)
  end

  def test_search_player__player_found
    assert_equal(true, @team.search_player("Marky"))
  end


  def test_search_player__not_found
    assert_equal(false, @team.search_player("im not here"))
  end

  def test_points_calculator__win
    @team.points_calculator(true)
    assert_equal(@team.points, 1)
  end

  def test_points_calculator_loss
    @team.points_calculator(false)
    assert_equal(@team.points, 0)
  end



end
