class Player < Sprite
    def initialize()
      image = Image.load("images/noschar1.png")
      x = (640 - image.width) / 2
      y = 400 - image.height
      super(x, y, image)
    end
  
    def update
      dx = Input.x
        if (dx == -1 && self.x > 0) || (dx == 1 && self.x < (640 - image.width)) 
          self.x += dx
        end
    end
  end