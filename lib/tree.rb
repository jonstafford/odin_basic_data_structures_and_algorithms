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


def breadth(queue, target_value)
  return nil if queue.empty?
  
  node = queue[0]
  
  return node if (target_value == node.value)
    
    
  queue << node.left if (!node.left.nil?)
  queue << node.right if (!node.right.nil?)
  
  queue.shift
  
  breadth(queue, target_value)
end
  
def breadth_first_search(root, target_value)
  breadth([root], target_value)
end
  
def depth_first_search(root, target_value)
  stack = []
  stack << root

  while !stack.empty? do
    node = stack.pop   

    return node  if (node.value == target_value)
    
    stack << node.left if (!node.left.nil?)
    stack << node.right if (!node.right.nil?)
  end
end
  
  

      
  

