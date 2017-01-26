# responsible for the game logic
class Game

  attr_reader :board, :player1

  def initialize(board)
    @board = board.new
    @player1 = nil
  end

  def add_player1(player)
    @player1 = player
  end

end
