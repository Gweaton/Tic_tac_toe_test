require 'board'

describe Board do

  let(:field) { double :field }
  subject(:board) { described_class.new(field) }
  let(:a1) { double :a1 }

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
      expect(board.show_grid[:a1]).to receive(:place)
      board.place("X", :a1)
    end
  end
end
