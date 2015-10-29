require_relative "zorder"

class Square
	attr_reader :x, :y, :color, :l

	def initialize(x, y, l)
		@x = x
		@y = y
		@color = Gosu::Color.new(0xff_000000)
		@color.red = rand(256 - 40) + 40
		@color.green = rand(256 - 40) + 40
		@color.blue = rand(256 - 40) + 40

		@l = l
	end

	def draw
		for n in 0..l
			Gosu.draw_line((x + n), y, @color, (x + n), (y + l), @color, ZOrder::Shape)
		end
	end

end