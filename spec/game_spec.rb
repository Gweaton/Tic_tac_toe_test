require 'game'

describe Game do

  let(:board) { double :board }
  subject(:game) { described_class.new(board) }

  before do
    allow(board).to receive(:new).and_return board

  end

  it "should be initialized with a board" do
    expect(game.board).to eq board
  end

end
