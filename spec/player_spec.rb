require 'player'

describe 'Player' do

  it "should have an name of X or O" do
    player = Player.new('O')
    expect(player.name).to eq 'O'
  end

end
