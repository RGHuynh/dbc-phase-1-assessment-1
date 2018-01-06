class PointsCalculator
  WINS = 2
  LOSSES = 0
  OVERTIME_LOSSES = 1

  def points_for_team(team)
    (team.wins * WINS) + (team.losses * LOSSES) + (team.overtime_losses * OVERTIME_LOSSES)
  end

end
