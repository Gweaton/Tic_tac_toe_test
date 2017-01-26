require 'game'

describe Game do

  let(:board) { double :board }
  subject(:game) { described_class.new(board) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2}

  before do
    allow(board).to receive(:new).and_return board

  end

  it "should be initialized with a board" do
    expect(game.board).to eq board
  end

  context "players" do
    before do
      game.add_player(player1)
    end
    it "can add a player" do
      expect(game.player1).to eq player1
    end

    it "can add a second player" do
      game.add_player(player2)
      expect(game.player2).to eq player2
    end
  end

end
