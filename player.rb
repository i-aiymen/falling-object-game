class Player < Sprite
    attr_accessor :score
  
    def initialize()
      image = Image.load("images/noschar1.png")
      x = (640 - image.width) / 2
      y = 400 - image.height
      @sound = Sound.new("sounds/get.wav") # 追加
      @score = 0 # 追加
      super(x, y, image)
    end
  
    def update
      dx = Input.x
      if (dx == -1 && self.x > 0) || (dx == 1 && self.x < (640 - image.width)) 
        self.x += dx
      end
    end
  
    def shot # 追加
      @sound.play
      @score += 1
    end
end