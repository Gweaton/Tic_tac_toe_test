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
    raise "You cannot place a letter where there is already a letter!" if taken?(field)
    @board[field].place(letter)
  end

  private

  def taken?(field)
    @board[field].show != nil
  end

end
