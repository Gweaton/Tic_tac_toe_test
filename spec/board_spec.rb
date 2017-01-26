require 'board'

describe Board do

  subject(:board) { described_class.new }

  it "should be initialized with a 3 x 3 grid" do
    expect(board.show_grid).to eq [['-', '-', '-'],
                                   ['-', '-', '-'],
                                   ['-', '-', '-']]
  end
end
