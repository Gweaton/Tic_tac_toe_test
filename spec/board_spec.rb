require 'board'

describe Board do

  let(:field) { double :field, content: nil }
  subject(:board) { described_class.new(field) }
  let(:a1) { double :a1 }
  let(:a2) { double :a2 }
  let(:a3) { double :a3 }

  before do
    allow(field).to receive(:new).and_return field
    allow(field).to receive(:place)
    allow(a1).to receive(:place)
    allow(field).to receive(:show)
  end

  it "should be initialized with a 3 x 3 hash grid of fields" do
    expect(board.show_grid.length).to eq 9
  end

  it "each field has an initial content of nil" do
    expect(board.show_grid[:a1].show).to eq nil
  end

  context 'placing letters' do
    it "should place the selected letter on the board" do
      expect(board.show_grid[:a1]).to receive(:place).with("X")
      board.place("X", :a1)
    end

    it "does not let you place a letter on a full board" do
      allow(field).to receive(:content).and_return "X"
      expect { board.place("X", :a1) }.to raise_error "The board is full - the game is finished!"
    end
  end

  context 'victory conditions' do
    xit "knows when a whole row has been taken by one player" do
      board.place("X", :a1)
      board.place("X", :a2)
      board.place("X", :a3)
      p board.show_grid[:a1].content
      expect(board.whole_row?).to eq true
    end
  end
end
