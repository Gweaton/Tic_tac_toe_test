# Responsible for creating the board to play on
class Board

  attr_reader :board

  def initialize
    @board = [['-', '-', '-'],
              ['-', '-', '-'],
              ['-', '-', '-']]
  end

  def show_grid
    self.board
  end
end
