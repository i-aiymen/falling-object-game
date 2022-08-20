require 'dxruby'

require_relative 'apple'
require_relative 'bomb'
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

bombs = []
bomb_n = 5
bomb_n.times do
  bombs << Bomb.new()
end

player = Player.new()

Window.loop do
  Window.draw(0, 400, ground_img)

  if player.active # 追加
    Sprite.update(apples)
    Sprite.update(bombs)
    player.update

    Sprite.check(player, apples)
    Sprite.clean(apples)
    (apple_n - apples.size).times do
      apples << Apple.new()
    end

    Sprite.check(bombs, player) # 追加
    Sprite.clean(bombs) # 追加
    (bomb_n - bombs.size).times do
      bombs << Bomb.new()
    end
  end

  Sprite.draw(apples)
  Sprite.draw(bombs) # 追加
  player.draw

  Window.draw_font(10, 10, "Ayimen：#{player.score}", font)
end