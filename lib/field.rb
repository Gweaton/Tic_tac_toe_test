# responsible for an individual field onto which an X or O can be placed
class Field

  attr_reader :location

  def initialize
    @content = nil
  end

  def show
    @content
  end

  def place(letter)
    raise "You cannot place a letter on an occupied space." if taken?
    @content = letter
  end

  def taken?
    @content != nil
  end


end
