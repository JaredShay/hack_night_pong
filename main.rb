require_relative './paddle'

class Main
  WIDTH  = 35
  HEIGHT = 14
  CLEAR = `clear`

  def initialize
    @screen_buffer = Array.new(HEIGHT) { Array.new(WIDTH) { ' ' } }

    @paddle_1 = Paddle.new(x: 0, y: 0)
  end

  def start
    HEIGHT.times do |n|
      @screen_buffer[n][17] = '|'
    end

    @paddle_1.height.times do |x|
      @paddle_1.width.times do |y|
        @screen_buffer[x + @paddle_1.pos_x][y + @paddle_1.pos_y] = @paddle_1.char
      end
    end

    while true
      puts @screen_buffer.map { |x| x.join('') }.join("\n")
      sleep 1
      puts CLEAR
    end
  end
end

Main.new.start
