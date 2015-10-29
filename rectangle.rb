require_relative "zorder"

class Rectangle
	attr_reader :x, :y, :color, :l, :w

	def initialize(x, y, l, w)
		@x = x
		@y = y
		@color = Gosu::Color.new(0xff_000000)
		@color.red = rand(256 - 40) + 40
		@color.green = rand(256 - 40) + 40
		@color.blue = rand(256 - 40) + 40

		@l = l
		@w = w
	end

	def draw
		for n in 0..l
			Gosu.draw_line((x + n), y, @color, (x + n), (y + w), @color, ZOrder::Shape)
		end
	end

end