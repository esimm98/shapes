require_relative "zorder"

class Square
	attr_reader :x, :y, :blue

	def initialize(x, y)
		@x = x
		@y = y
		@blue = 0xff_0000ff
	end

	def draw
		Gosu.draw_quad(x, y, @blue, x + 50, y, @blue, x + 50, y + 50, @blue,
			x, y + 50, blue, ZOrder::Shape)
	end

end