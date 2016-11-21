require 'node'

# Returns the root node of a binary tree created from the array of values supplied
def build_tree(values)
  
  root = Node.new values[0]
  
  values[1..-1].each do |value|
    new_node = Node.new value
        
    node = root
    loop do       
      if (value < node.value)
        if (node.left.nil?)
          node.left = new_node
          new_node.parent = node
          break
        else
          node = node.left
        end
      else
        if (node.right.nil?)
          node.right = new_node
          new_node.parent = node
          break
        else
          node = node.right
        end
      end
    end
  end
  root
end

      
  

