describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

it 'accepts two player instances' do
  expect(game.players).to include(player_1).and include(player_2)
end

describe '#attack' do
  it 'damages the player' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end
end
end
