class Paddle
  attr_reader :pos_x, :pos_y, :char, :width, :height

  def initialize(x:, y:)
    @char = '□'
    @width = 1
    @height = 4
    @pos_x = x
    @pos_y = y
  end
end
