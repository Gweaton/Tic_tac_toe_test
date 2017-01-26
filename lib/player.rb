# Responsible for player name
class Player

  attr_reader :name

  def initialize(name)
    raise "Sorry, player names can only be X or O." unless valid_name?(name)
    @name = name
  end

  private

  def valid_name?(name)
    (name == "X" || name == "O")
  end

end
