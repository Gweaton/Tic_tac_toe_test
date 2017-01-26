require 'board'

describe Board do

  subject(:board) { described_class.new(Field) }
  let(:a1) { double :field, letter: nil }


  it "should be initialized with a 3 x 3 hash grid of fields" do
    expect(board.show_grid.length).to eq 9
  end
end
