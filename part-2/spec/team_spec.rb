require 'spec_helper'

RSpec.describe Team do
  let(:team) { Team.new({name: 'Ducks', wins: 6, losses: 2, overtime_losses: 2}) }

  it 'has a name' do
    expect(team.name).to eq 'Ducks'
  end

  it 'has wins' do
    expect(team.wins).to eq 6
  end

  it 'has losses' do
    expect(team.losses).to eq 2
  end

  it 'has overtime_losses' do
    expect(team.overtime_losses).to eq 2
  end

end
