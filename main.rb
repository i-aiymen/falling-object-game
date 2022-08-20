require 'dxruby'
require_relative 'player'
require_relative 'apple'

Window.bgcolor = [255, 128, 255, 255]
ground_img = Image.new(640, 80, [255, 116, 80, 48])
ground_img.box_fill(0, 0, 640, 10, [255, 0, 128, 0])

player = Player.new()
apple = Apple.new()

Window.loop do
    Window.draw(0, 400, ground_img)

    apple.update
    player.update

    apple.draw
    player.draw
end