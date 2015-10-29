require_relative "zorder"

class Rectangle
	attr_reader :x, :y, :red

	def initialize(x, y)
		@x = x
		@y = y
		@red = 0xff_ff0000
	end

	def draw
		Gosu.draw_quad(x, y, @red, x + 100, y, @red, x + 100, y + 50, @red,
			x, y + 50, red, ZOrder::Shape)
	end

end