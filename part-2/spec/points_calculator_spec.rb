require 'spec_helper'

RSpec.describe PointsCalculator do

  let(:ducks) { Team.new({name: 'Ducks', wins: 6, losses: 2, overtime_losses: 2}) }
  let(:calulator) { PointsCalculator.new }

  it 'calculates points for a team' do
    expect(calulator.points_for_team(ducks)).to eq 14
  end

end
