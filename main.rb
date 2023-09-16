require_relative './chess_part/board.rb'
require_relative './chess_part/pieces/bishop.rb'
require_relative './chess_part/pieces/board_render.rb'
require_relative './chess_part/pieces/king.rb'
require_relative './chess_part/pieces/knight.rb'
require_relative './chess_part/pieces/pawn.rb'
require_relative './chess_part/pieces/queen.rb'
require_relative './chess_part/pieces/rook.rb'



b = Board.start_chess


text_board = BoardRendererText.new(b)

puts text_board.render 
# loc = [5, 8]
# b[loc] = c
# puts b[loc]

# puts b[[1, 2]]