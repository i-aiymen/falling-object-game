class Apple < Sprite
    def initialize()
      image = Image.load("images/apple.png")
      x = rand(0..(640 - image.width))
      y = 0
      @speed = rand(1..5)
      super(x, y, image)
    end
  
    def update
      self.y += @speed
      if self.y > 400 - image.height
        self.vanish
      end
    end
  
    def hit # 追加
      self.vanish
    end
end