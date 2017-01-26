require 'game'

describe Game do

  let(:board) { double :board }
  subject(:game) { described_class.new(board) }
  let(:player1) { double :player1 }

  before do
    allow(board).to receive(:new).and_return board

  end

  it "should be initialized with a board" do
    expect(game.board).to eq board
  end

  it "can add a player" do
    game.add_player1(player1)
    expect(game.player1).to eq player1
  end

end
