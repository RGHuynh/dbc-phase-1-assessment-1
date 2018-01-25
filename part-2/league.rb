class League

  attr_reader :calculator, :teams

  def initialize(args={})
    @teams = args.fetch(:teams, [])
    @calculator = args.fetch(:calculator) { PointsCalculator.new }
  end

  def standings
    teams.sort {|team, next_team| calculator.points_for_team(team) <=> calculator.points_for_team(next_team)}.reverse
  end

  def playoff_teams
    number_of_teams = teams.count / 2
    sorted_team = standings
    sorted_team.slice(0..number_of_teams - 1)
  end

  def position_for(team)
    team_object = standings.select {|group| group.name == team}
    team_object.each {|group| return standings.index(group) + 1 }

  end

end
