require_relative 'square'

# Answers 8x8 2D array of squares, each with their links to other squares set.
def create_board
  squares = []
  8.times do |i|
    column = []
    8.times do |j|
      column << Square.new(i, j)
    end
    squares << column
  end
  
  offsets = [-2, -1, 1, 2]
  range = (0..7)
  
  squares.each do |column|
    column.each do |square|
      offsets.each do |i|
        offsets.each do |j|
          if (i*j).abs == 2
            other_x = square.x + i
            other_y = square.y + j
            if (range === other_x && range === other_y)
              square.links << squares[other_x][other_y]
            end
          end
        end
      end
    end
  end
  
  squares
end

def search(to, queue)
  square = queue[0][0]  
  visited = queue[0][1]

  return visited if (to[0] == square.x && to[1] == square.y)

  square.links.each do |l|
    if (!visited.include?(l))
      queue << [l, visited + [l]]
    end
  end

  queue.shift
 
  return search(to, queue) 
end


def knight_moves(from, to)
  board = create_board
  
  queue = []
  square = board[from[0]][from[1]]

  queue << [square, [square]]
  
  visited_squares = search(to, queue)
  
  result = []
  visited_squares.each do |s|
    result << [s.x, s.y]
  end
  
  puts "You made it in #{result.length - 1} moves!  Here's your path:"
  result.each do |move|
    puts "[#{move[0]}, #{move[1]}]"
  end
  
  result
end

