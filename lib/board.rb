# Responsible for creating the board to play on
class Board

  def initialize
    @board = [['-', '-', '-'],
              ['-', '-', '-'],
              ['-', '-', '-']]
  end

  def show_grid
    @board
  end
end
