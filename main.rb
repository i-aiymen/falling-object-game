require 'dxruby'
require_relative 'player'
require_relative 'apple'

Window.bgcolor = [255, 128, 255, 255]
ground_img = Image.new(640, 80, [255, 116, 80, 48])
ground_img.box_fill(0, 0, 640, 10, [255, 0, 128, 0])

player = Player.new()
apples = []
apple_n = 5
apple_n.times do
  apples << Apple.new()
end

Window.loop do
    Window.draw(0, 400, ground_img)

    Sprite.update(apples)
    player.update

    Sprite.clean(apples) # 追加
    (apple_n - apples.size).times do # 追加
        apples << Apple.new()
    end

    Sprite.draw(apples)
    player.draw
end