require_relative "zorder"
require_relative "rectangle"
require_relative "square"
require_relative "triangle"
require 'gosu'

class GameWindow < Gosu::Window

  def initialize
    super 640, 480
    self.caption = "Shapes"

    @background = Gosu::Image.new("media/background.jpg", :tileable => true)
    @rectangles = []
    @squares = []
    @triangles = []

  end

  def update
   @rectangle = Rectangle.new(mouse_x, mouse_y))
   @square = Square.new(mouse_x, mouse_y))
   @triangle = Star.new(mouse_x, mouse_y)
  end

  def needs_cursor?
    true
  end

  def button_down(id)
    Gosu::MsLeft
  end

  def draw
  	@background.draw(0, 0, ZOrder::Background)
  end

end

window = GameWindow.new
window.show