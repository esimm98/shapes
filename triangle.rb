require_relative "zorder"

class Triangle
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
		# for n in 0..l
		# 	Gosu.draw_line((x + n), y, @color, (x + n + 1), (y + l), @color, ZOrder::Shape)
		# end
		Gosu.draw_line(x, y, @color, (x + l/2), (y + l), @color, ZOrder::Shape)
		Gosu.draw_line(x, y, @color, (x - l/2), (y + l), @color, ZOrder::Shape)
		Gosu.draw_line((x + l/2), (y + l), @color, (x - l/2), (y + l), @color, ZOrder::Shape)
	end

end