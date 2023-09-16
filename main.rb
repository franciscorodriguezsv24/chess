require_relative './chess_part/board.rb'
require_relative './chess_part/pieces/pawn.rb'


b = Board.new 

b[[1, 0]] = Pawn.new([0, 0], :black)
b[[1, 1]] = Pawn.new([0, 0], :black)
b[[1, 2]] = Pawn.new([0, 0], :black)
b[[1, 3]] = Pawn.new([0, 0], :black)
b[[1, 4]] = Pawn.new([0, 0], :black)
b[[1, 5]] = Pawn.new([0, 0], :black)
b[[1, 6]] = Pawn.new([0, 0], :black)
b[[1, 7]] = Pawn.new([0, 0], :black)
# loc = [5, 8]
# b[loc] = c
# puts b[loc]

# puts b[[1, 2]]
puts b.grid