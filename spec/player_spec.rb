require 'player'

describe Player do

  subject(:player1) { described_class.new("O") }
  subject(:player2) { described_class.new("X")}

  it "should have an name of X or O" do
    expect(player1.name).to eq 'O'
    expect(player2.name).to eq "X"
  end

  it "should not allow any other names to be chosen" do
    expect { Player.new("Y") }.to raise_error("Sorry, player names can only be X or O.")
  end

end
