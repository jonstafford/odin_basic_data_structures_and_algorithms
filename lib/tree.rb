require 'node'

# Returns the root node of a binary tree created from the array of values supplied
def build_tree(values, parent = nil)
  return nil if values.nil? || values.empty?
  
  value_count = values.length
  if value_count == 1
    result = Node.new values[0]
  else
    # If we don't have a least 2 values, the uses of #splice
    # below can give us unwanted results.
    
    mid = value_count / 2
    result = Node.new values[mid]
  
    result.left = build_tree(values[0..(mid - 1)], result)
    result.right = build_tree(values[(mid + 1)..-1], result)
  end
    
  if !parent.nil?
    result.parent = parent
  end
      
  result
end
