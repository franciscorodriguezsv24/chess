require_relative './chess_part/board.rb'
require_relative './chess_part/pieces/pawn.rb'


b = Board.new 

c = "\u2654"

pawn = Pawn.new([0, 0])
p pawn.to_s

puts c

puts b.in_bounds?([-1, 0])
puts b.in_bounds?([0, 0])
puts b.in_bounds?([1, 1])
puts b.in_bounds?([5, 5])

loc = [5, 8]
b[loc] = c
puts b[loc]

puts b[[1, 2]]
print b.grid