require_relative './main'
require_relative './paddle'

class Player

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  def player_move
    up = mouse_up
    down = up - @last_mouse_up
    @name.up += down
  end

end
