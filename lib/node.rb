class Node
  
  attr_reader :value
  
  attr_accessor :parent
  attr_accessor :left
  attr_accessor :right
  
  def initialize value
    @value = value
  end
  
end
  