require 'dxruby'

require_relative 'apple'
require_relative 'player'

Window.bgcolor = [255, 128, 255, 255]
ground_img = Image.new(640, 80, [255, 116, 80, 48])
ground_img.box_fill(0, 0, 640, 10, [255, 0, 128, 0])
font = Font.new(32) # 追加

apples = []
apple_n = 5
apple_n.times do
  apples << Apple.new()
end
player = Player.new()

Window.loop do
  Window.draw(0, 400, ground_img)

  Sprite.update(apples)
  player.update

  Sprite.check(player, apples) # 追加
  Sprite.clean(apples)
  (apple_n - apples.size).times do
    apples << Apple.new()
  end

  Sprite.draw(apples)
  player.draw

  Window.draw_font(10, 10, "スコア：#{player.score}", font) # 追加
end