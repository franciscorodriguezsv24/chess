require_relative './chess_part/board.rb'
require_relative './chess_part/board_render.rb'
require_relative './chess_part/pieces_routes.rb'
require_relative './chess_part/game.rb'
require_relative './chess_part/player.rb'
require_relative './chess_part/invalid_error.rb'

require './helper_module.rb'

Helper.show_help('

Welcome to Chess game, we have created this game for you
I  will explain you how it works 

   0 1 2 3 4 5 6 7 
 0 ♜ ♞ ♝ ♕ ♚ ♝ ♞ ♜
 1 ♟ ♟ ♟ ♟ ♟ ♟ ♟ ♟
 2 ---------------
 3 ---------------
 4 ---------------
 5 ---------------
 6 ♙ ♙ ♙ ♙ ♙ ♙ ♙ ♙
 7 ♖ ♘ ♗ ♕ ♔ ♗ ♘ ♖

  black & whites move in this way [Rows, colum]

  ♟ Powns
  ♜ Rook
  ♞ Knight
  ♝ Bishop
  ♚ King 
  ♛ Queen 

  1 - You need to select a piece in this way 

  0 1 2 3 4 5 6 7 
  0 ♜ ♞ ♝ ♕ ♚ ♝ ♞ ♜
  1 ♟ ♟ ♟ ♟ ♟ ♟ ♟ ♟
  2 ---------------
  3 ---------------
  4 ---------------
  5 ---------------
  6 ♙ ♙ ♙ ♙ ♙ ♙ ♙ ♙
  7 ♖ ♘ ♗ ♕ ♔ ♗ ♘ ♖ 

  for example, you will add [1, 1]

  2 - in this way you would have
  chosed the next piece

    0 1 2 3 4 5 6 7 
    0 ♜ ♞ ♝ ♕ ♚ ♝ ♞ ♜
    1[♟]♟ ♟ ♟ ♟ ♟ ♟ ♟
    2 ---------------
    3 ---------------
    4 ---------------
    5 ---------------
    6 ♙ ♙ ♙ ♙ ♙ ♙ ♙ ♙
    7 ♖ ♘ ♗ ♕ ♔ ♗ ♘ ♖

   3 - and then you will put 
    the move, folling the 
    same way like when you chose a
    piece 

    move: [3, 1]

    the  piece will move in this way

    0 1 2 3 4 5 6 7 
    0 ♜ ♞ ♝ ♕ ♚ ♝ ♞ ♜
    1 ♟   ♟ ♟ ♟ ♟ ♟ ♟
    2 ---------------
    3 --♟------------
    4 ---------------
    5 ---------------
    6 ♙ ♙ ♙ ♙ ♙ ♙ ♙ ♙
    7 ♖ ♘ ♗ ♕ ♔ ♗ ♘ ♖

    and that is the simple
    tutorial to chose and move your piece
    and I would like to 
    recomend you that you need 
    to find someone else to enjoy 
    the whole game. have a nice day. 
  ')




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