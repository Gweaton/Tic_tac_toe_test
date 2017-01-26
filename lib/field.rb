# responsible for an individual field onto which an X or O can be placed
class Field

  attr_reader :location

  def initialize(location)
    @location = location
    @letter = nil
  end

  def show
    @letter
  end

end
