# Responsible for creating the board to play on
require_relative 'field'
class Board

  def initialize(field)
    @board = {}
    [*"a".."c"].each do |letter|
      [*1..3].each do |number|
        @board["#{letter}#{number}".to_sym] = field.new
      end
    end
  end

  def show_grid
    @board
  end

  def place(letter, field)
    @board[field].place(letter)
  end

end
