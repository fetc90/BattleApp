require 'game'

describe Game do
  subject { described_class.new(player_one, player_two) }
  let(:player_one) { double(:player_one) }
  let(:player_two) { double(:player_two) }

  it "holds two players" do
    expect(subject.player_one).to eq(player_one)
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_two).to receive(:receive_damage)
      subject.attack(player_two)
    end
  end

end
