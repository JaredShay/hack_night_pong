require_relative './main'
require_relative './paddle'

class Game_Screen

  def initialize(p1, p2, log=nil)
    @players = [p1, p2]
    @log = log || Logger.new(StringIO.new)
  end

end
