require 'spec_helper'

RSpec.describe League do

  let(:blues) { Team.new({name: 'Blues', wins: 7, losses: 2, overtime_losses: 1}) }
  let(:capitals) { Team.new({name: 'Capitals', wins: 5, losses: 4, overtime_losses: 1}) }
  let(:coyotes) { Team.new({name: 'Coyotes', wins: 1, losses: 6, overtime_losses: 3}) }
  let(:ducks) { Team.new({name: 'Ducks', wins: 6, losses: 0, overtime_losses: 4}) }
  let(:flames) { Team.new({name: 'Flames', wins: 3, losses: 7, overtime_losses: 0}) }
  let(:jets) { Team.new({name: 'Jets', wins: 9, losses: 0, overtime_losses: 1}) }
  let(:penguins) { Team.new({name: 'Penguins', wins: 4, losses: 4, overtime_losses: 2}) }
  let(:red_wings) { Team.new({name: 'Red Wings', wins: 8, losses: 2, overtime_losses: 1}) }
  let(:teams) { [blues, capitals, coyotes, ducks, flames, jets, penguins, red_wings] }

  let(:calculator) { PointsCalculator.new }

  let(:league) { League.new({teams: teams, calculator: calculator}) }

  it 'has teams' do
    expect(league.teams).to match_array teams
  end

  it 'has a calculator' do
    expect(league.calculator).to eq calculator
  end

  describe '#standings', { standings: true } do
    it 'returns a collection of teams sorted by points in descending order' do
      expect(league.standings).to eq [jets, red_wings, ducks, blues, capitals, penguins, flames, coyotes]
    end
  end

  describe '#playoff_teams', { playoff_teams: true } do
    it 'returns the top half of the teams in the league' do
      expect(league.playoff_teams).to eq [jets, red_wings, ducks, blues]
    end
  end

  describe '#position_for(name)', { position_for: true } do
    it 'returns the position of the team with the passed in name' do
      expect(league.position_for('Jets')).to eq 1
      expect(league.position_for('Flames')).to eq 7
    end
  end
end
