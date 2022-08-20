class Bomb < Sprite
    def initialize()
      image = Image.load("images/bomb.png")
      x = rand(0..(640 - image.width))
      y = 0
      @sound = Sound.new("sounds/explosion.wav")
      @speed = rand(1..5)
      super(x, y, image)
    end
  
    def update
      self.y += @speed
      if self.y > 400 - image.height
        self.vanish
      end
    end
  
    def shot
      @sound.play
    end
end