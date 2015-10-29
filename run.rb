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

  def needs_cursor?
    true
  end

  def button_down(id)
    true if id == Gosu::MsLeft
  end

  def update
   @rectangles.push(Rectangle.new(mouse_x, mouse_y)) if Gosu::button_down? Gosu::MsLeft
   @squares.push(Square.new(mouse_x, mouse_y)) if Gosu::button_down? Gosu::MsRight
   # @triangle = Star.new(mouse_x, mouse_y)
  end

  def draw
  	@background.draw(0, 0, ZOrder::Background)
    @rectangles.each{|rectangle| rectangle.draw} 
    @squares.each{|square| square.draw} 
    # @triangles.each{|triangle| triangle.draw} 
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end

end

window = GameWindow.new
window.show