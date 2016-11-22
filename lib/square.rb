class Square
  attr_reader :x
  attr_reader :y
  
  attr_accessor :links
  
  def initialize(x, y)
    @x = x
    @y = y
    @links = []
  end
  
  def to_s
    links_s = []
    links.each do |l|
      links_s << "(#{l.x}, #{l.y})"
    end
    
    "Square(#{@x}, #{@y}), links: " + links_s.join(" | ")
  end
end

