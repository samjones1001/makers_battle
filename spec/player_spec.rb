require 'player'

describe Player do
  let (:player)  { described_class.new('Sam') }

  it 'has a name' do
    expect(player.name).to eq('Sam')
  end

  it 'starts with a default number of hit points' do
    expect(player.hitpoints).to eq(Player::STARTING_HP)
  end

  describe('take_damage') do
    it('reduces current hp by 10') do
      expect{ player.take_damage }.to change{ player.hitpoints }.by(-10)
    end
  end
end
