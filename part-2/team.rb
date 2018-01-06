class Team

  attr_reader :losses, :name, :overtime_losses, :wins

  def initialize(args={})
    @losses = args.fetch(:losses, 0)
    @name = args.fetch(:name, '')
    @overtime_losses = args.fetch(:overtime_losses, 0)
    @wins = args.fetch(:wins, 0)
  end

end
