class Game 
    attr_reader :player1, :player2, :board, :renderer
    attr_accessor :current_player 

    def initialize (board, player1, player2, renderer_class)
        @board = board
        @renderer = renderer_class.new(board)
        renderer.board = board
        @player1 = player1
        @player2 = player2
        @current_player = @player1
    end 

    def swap_player!
        self.current_player = (current_player == player1 ? player2 : player1)
    end 

    def play 
        renderer.render

        puts "It's #{current_player.color}'s turn " 

        start_pos = nil
        
        loop do
        puts "Select a piece: "

        start_pos = current_player.get_pos
        if !board[start_pos].nil? && board[start_pos].color == current_player.color
            break
        end 
        puts "Did not select a #{current_player.color} piece"
        end
        loop do
        puts "select a position to move to: "
        end_pos = current_player.get_pos 
        
        begin
         board.move_piece(start_pos, end_pos)
         break
        rescue InvalidMoveError
            puts "unable to move to that location"
        end
    end
    end

end
