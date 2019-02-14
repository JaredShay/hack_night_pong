require_relative './main'
require_relative './paddle'

class Player

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

end
