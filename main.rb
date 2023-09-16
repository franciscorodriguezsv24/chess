require_relative './chess_part/board.rb'
require_relative './chess_part/pieces/bishop.rb'
require_relative './chess_part/pieces/board_render.rb'
require_relative './chess_part/pieces/pieces_routes.rb'
require_relative './chess_part/game.rb'
require_relative './chess_part/player.rb'
require_relative './chess_part/invalid_error.rb'





b = Board.start_chess

g = Game.new(
    b, 
    Player.new(:black),
    Player.new(:white),
    BoardRendererText
)
g.play

# b = Board.new

# b[[2, 2]] = King.new(b, [2, 2], :black)
# p b[[2, 2]].available_moves 

# b = Board.start_chess
# text_board = BoardRendererText.new(b)



# b[[2, 2]] = Pawn.new(b, [2, 2], :white)
# b[[2, 0]] = Pawn.new(b, [2, 2], :white)


# p b.move_piece([1, 2], [2, 2])
# puts text_board.render

# # loc = [5, 8]
# # b[loc] = c
# # puts b[loc]

# puts b[[1, 2]]