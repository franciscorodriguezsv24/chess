require_relative './chess_part/board.rb'
require_relative './chess_part/pieces/bishop.rb'
require_relative './chess_part/pieces/board_render.rb'
require_relative './chess_part/pieces/pieces_routes.rb'

b = Board.new

b[[2, 2]] = King.new(b, [2, 2], :black)
p b[[2, 2]].available_moves 

# loc = [5, 8]
# b[loc] = c
# puts b[loc]

# puts b[[1, 2]]