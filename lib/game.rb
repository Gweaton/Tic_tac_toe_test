# responsible for the game logic
class Game
  attr_reader :board
  attr_accessor :player1, :player2

  def initialize(board)
    @board = board.new
    @player1, @player2 = nil
  end

  def add_player(player)
    self.player1 ? self.player2 = player : self.player1 = player unless has_two_players?
  end

  def turn
    @turn ||= self.player1
  end

  def place(letter, field)
    @board.place(letter, field)
    switch_turns
  end

  private

  def switch_turns
    return @turn = player2 if @turn != player2
    @turn = player1 if @turn != player1
  end

  def has_two_players?
    (player1 != nil && player2 != nil)
  end
end
