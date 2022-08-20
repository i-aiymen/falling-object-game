class Player < Sprite
    def initialize()
      image = Image.load("images/noschar1.png")
      x = (640 - image.width) / 2
      y = 400 - image.height
      super(x, y, image)
    end
  
    def update
      self.x += Input.x
    end
  end