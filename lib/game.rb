# responsible for the game logic
class Game

  attr_accessor :board, :player1, :player2

  def initialize(board)
    @board = board.new
    @player1, @player2 = nil
  end

  def add_player(player)
    self.player1 ? self.player2 = player : self.player1 = player unless has_two_players?
  end

  private

  def has_two_players?
    (player1 != nil && player2 != nil)
  end

end
