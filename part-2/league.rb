class League

  attr_reader :calculator, :teams

  def initialize(args={})
    @teams = args.fetch(:teams, [])
    @calculator = args.fetch(:calculator) { PointsCalculator.new }
  end

end
